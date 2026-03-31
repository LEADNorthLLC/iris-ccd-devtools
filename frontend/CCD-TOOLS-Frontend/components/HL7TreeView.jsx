'use client';

import React from 'react';
import { Tree } from 'react-arborist';
import { ChevronRight, ChevronDown, X, ListTree, Copy } from 'lucide-react';
import { parseHL7Message } from '../utils/hl7Parser';

/** HL7 MSH: first pipe-delimited value after segment name is MSH-2; parser uses 1-based field index from that slice — offset +1 for spec field numbers. */
const hl7FieldNumberForDisplay = (segmentType, parserFieldNumber) =>
  segmentType === 'MSH' ? parserFieldNumber + 1 : parserFieldNumber;

/**
 * @param {{ message: string; embedded?: boolean }} props
 * @param {string} props.message - Raw HL7 message text (segment lines, pipe-delimited) or JSON string containing HL7
 * @param {boolean} [props.embedded] - If true, render without outer card for use inside TestComponent panel
 */
export function HL7TreeView({ message, embedded = false }) {
  const [searchTerm, setSearchTerm] = React.useState('');
  const treeRef = React.useRef(null);

  if (!message || !message.trim()) return null;

  // If message looks like JSON, try to extract raw HL7 (e.g. {"content": "MSH|..."} or plain HL7 string in JSON)
  let rawMessage = message.trim();
  if (rawMessage.startsWith('{')) {
    try {
      const parsed = JSON.parse(rawMessage);
      rawMessage = typeof parsed.HL7 === 'string' ? parsed.HL7
        : typeof parsed.content === 'string' ? parsed.content
        : typeof parsed.message === 'string' ? parsed.message
        : typeof parsed === 'string' ? parsed
        : rawMessage;
    } catch {
      rawMessage = message.trim();
    }
  }

  const segments = parseHL7Message(rawMessage);
  if (!segments.length) {
    return (
      <div className="w-full bg-white dark:bg-gray-700 rounded-lg p-4 text-sm text-gray-500 dark:text-gray-400">
        Paste raw HL7 message (e.g. MSH|^~\\&|...) to view the tree. JSON input is supported if it contains an HL7 string.
      </div>
    );
  }

  const treeData = segments.map((segment, segmentIndex) => ({
    id: `segment-${segmentIndex}`,
    name: segment.type,
    isSegment: true,
    children: segment.fields
      .filter((field) => field.value != null && String(field.value).trim() !== '')
      .map((field, i) => {
        const value = field.value.trim();
        const hl7FieldNumber = hl7FieldNumberForDisplay(segment.type, field.fieldNumber);
        const components = value.split(/\^|\\S\\/).map((c) => c.trim()).filter(Boolean);
        const fieldId = `segment-${segmentIndex}-field-${i}`;
        if (components.length <= 1) {
          return {
            id: fieldId,
            name: value,
            isField: true,
            segmentType: segment.type,
            hl7FieldNumber,
            componentNumber: 1,
          };
        }
        return {
          id: fieldId,
          name: value,
          isField: true,
          isComposite: true,
          segmentType: segment.type,
          hl7FieldNumber,
          children: components.map((comp, k) => ({
            id: `${fieldId}-comp-${k}`,
            name: comp,
            isComponent: true,
            segmentType: segment.type,
            hl7FieldNumber,
            componentNumber: k + 1,
          })),
        };
      }),
  }));

  function Node({ node, style, dragHandle }) {
    const isSegment = node.data.isSegment;
    const hasChildren = node.isInternal;
    const displayName = node.data.name ?? '';
    const refLabel =
      node.data.hl7FieldNumber != null && node.data.componentNumber != null
        ? `${node.data.segmentType ?? ''} ${node.data.hl7FieldNumber}.${node.data.componentNumber}`.trim()
        : '';

    const handleCopy = (e) => {
      e.stopPropagation();
      const value = displayName || '';
      if (value && navigator.clipboard?.writeText) {
        navigator.clipboard.writeText(value);
      }
    };

    return (
      <div
        ref={dragHandle}
        style={style}
        className={`group flex items-center gap-2 px-2 py-1.5 text-sm cursor-pointer rounded-md transition-colors relative ${
          isSegment
            ? 'font-semibold text-blue-700 dark:text-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/30'
            : 'text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-600/50'
        }`}
        onClick={() => node.toggle()}
      >
        {/* --- VERTICAL LINES --- */}
        {[...Array(node.level)].map((_, i) => (
          <div
            key={i}
            className="absolute h-full border-l border-emerald-600 dark:border-emerald-200"
            style={{
              left: i * 24 + 12,
              top: 0,
            }}
          />
        ))}

        <div className="flex items-center gap-2 w-full min-w-0">
          {isSegment ? (
            <>
              <span className="flex-shrink-0 text-emerald-900 dark:text-emerald-400">
                {node.isOpen ? (
                  <ChevronDown className="w-4 h-4 dark:text-white" />
                ) : (
                  <ChevronRight className="w-4 h-4 dark:text-white" />
                )}
              </span>
              <ListTree className="w-4 h-4 flex-shrink-0 text-blue-600 dark:text-blue-400" aria-hidden />
              <span className="text-emerald-900 dark:text-emerald-400 flex-1 min-w-0 truncate">{displayName}</span>
            </>
          ) : (
            <>
              <span className="flex-shrink-0 flex w-9 items-center justify-center text-emerald-900 dark:text-emerald-400">
                {hasChildren ? (
                  node.isOpen ? (
                    <ChevronDown className="w-4 h-4 dark:text-white" />
                  ) : (
                    <ChevronRight className="w-4 h-4 dark:text-white" />
                  )
                ) : (
                  <span
                    className="flex h-7 min-w-[1.75rem] max-w-[2.75rem] px-1 items-center justify-center rounded-full border border-emerald-600/55 bg-emerald-50 text-[10px] font-mono font-semibold tabular-nums leading-none text-emerald-900 dark:border-emerald-400/45 dark:bg-emerald-950/50 dark:text-emerald-100"
                    title={refLabel || undefined}
                    aria-label={refLabel || 'Field reference'}
                  >
                    {node.data.hl7FieldNumber}.{node.data.componentNumber}
                  </span>
                )}
              </span>
              <span className="font-mono text-xs truncate min-w-0 flex-1 dark:text-white" title={refLabel ? `${refLabel}: ${displayName}` : displayName}>
                {displayName || '\u2014'}
              </span>
            </>
          )}
        </div>

        <button
          type="button"
          onClick={handleCopy}
          className="flex-shrink-0 rounded p-1 opacity-0 group-hover:opacity-100 focus:opacity-100 focus:outline-none focus:ring-1 focus:ring-slate-400 dark:focus:ring-slate-500 text-slate-400 hover:text-slate-600 hover:bg-slate-200/60 dark:text-slate-500 dark:hover:text-slate-300 dark:hover:bg-slate-600/60 transition-opacity"
          aria-label="Copy value"
          title="Copy value"
        >
          <Copy className="h-3.5 w-3.5" aria-hidden />
        </button>
      </div>
    );
  }
  // function Node({ node, style, dragHandle }) {
  //   const isSegment = node.data.isSegment;
  //   const isField = node.data.isField;
  //   return (
  //     <div
  //       ref={dragHandle}
  //       style={style}
  //       className={`flex items-center gap-2 px-2 py-1.5 text-sm cursor-pointer rounded-md transition-colors ${
  //         isSegment
  //           ? 'font-semibold text-blue-700 dark:text-blue-400 hover:bg-blue-50 dark:hover:bg-blue-900/30'
  //           : 'text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-600/50'
  //       }`}
  //       onClick={() => node.toggle()}
  //     >
  //       {isSegment ? (
  //         <>
  //           <span className="flex-shrink-0 text-blue-600 dark:text-blue-400">
  //             {node.isOpen ? (
  //               <ChevronDown className="w-4 h-4" />
  //             ) : (
  //               <ChevronRight className="w-4 h-4" />
  //             )}
  //           </span>
  //           <LayoutList className="w-4 h-4 flex-shrink-0 text-blue-600 dark:text-blue-400" aria-hidden />
  //           <span>{node.data.name}</span>
  //         </>
  //       ) : (
  //         <>
  //           <span className="flex-shrink-0 w-4 h-4 flex items-center justify-center text-gray-500 dark:text-gray-400">
  //             <Tag className="w-3.5 h-3.5" aria-hidden />
  //           </span>
  //           <span className="font-mono text-xs truncate">{node.data.name}</span>
  //         </>
  //       )}
  //     </div>
  //   );
  // }

  const treeHeight = 300;
  const tree = (
    <div className={embedded ? 'w-full h-full min-h-[300px]' : 'w-full min-h-[300px]'}>
      <div className="flex h-full flex-col gap-2 pl-2 dark:bg-gray-700 text-gray-900 dark:text-white">
        <div className="flex items-center justify-between gap-2">
          <div className="flex items-center gap-1 text-xs mt-1">
            <button
              type="button"
              onClick={() => treeRef.current?.openAll()}
              className="rounded border border-gray-300 bg-white px-2 py-1 text-gray-700 shadow-sm hover:bg-gray-50 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100 dark:hover:bg-gray-700"
            >
              Expand
            </button>
            <button
              type="button"
              onClick={() => treeRef.current?.closeAll()}
              className="rounded border border-gray-300 bg-white px-2 py-1 text-gray-700 shadow-sm hover:bg-gray-50 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100 dark:hover:bg-gray-700"
            >
              Collapse
            </button>
          </div>
          <div className="relative w-full max-w-xs">
            <input
              type="text"
              value={searchTerm}
              onChange={(event) => setSearchTerm(event.target.value)}
              placeholder="Search segments & fields..."
              className="w-full rounded-md border border-gray-300 bg-white px-3 py-1.5 pr-8 text-xs text-gray-800 shadow-sm focus:border-blue-500 focus:outline-none focus:ring-1 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100 dark:placeholder:text-gray-400"
            />
            {searchTerm ? (
              <button
                type="button"
                onClick={() => setSearchTerm('')}
                className="absolute inset-y-0 right-2 flex items-center text-gray-400 hover:text-gray-600 dark:hover:text-gray-200"
                aria-label="Clear search"
              >
                <X className="h-3 w-3" />
              </button>
            ) : null}
          </div>
        </div>
        <Tree
          ref={treeRef}
          data={treeData}
          openByDefault={false}
          width="100%"
          height={treeHeight}
          indent={24}
          rowHeight={32}
          disableDrag
          disableDrop
          searchTerm={searchTerm.trim()}
          searchMatch={(node, term) =>
            node.data?.name?.toLowerCase().includes(term.toLowerCase())
          }
        >
          {Node}
        </Tree>
      </div>
    </div>
  );

  if (embedded) {
    return (
      <div className="w-full xml2 bg-white dark:bg-gray-700 rounded-lg p-4 overflow-auto">
        {tree}
      </div>
    );
  }

  return (
    <div className=" bg-white dark:bg-gray-800 rounded-lg border border-gray-200 dark:border-gray-700 overflow-hidden">
        {tree}
    </div>
  );
}
