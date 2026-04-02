import React, { useState, useRef } from 'react';
import XMLViewer from 'react-xml-viewer';

const XMLSearchableContainer = ({ xmlData, collapsible = true }) => {
  const [searchTerm, setSearchTerm] = useState('');
  const [matches, setMatches] = useState([]);
  const [currentIndex, setCurrentIndex] = useState(-1);
  const viewerRef = useRef(null);

  // Helper to clear existing highlights
  const clearHighlights = () => {
    if (!viewerRef.current) return;
    const highlighted = viewerRef.current.querySelectorAll('.bg-yellow-200, .bg-orange-500');
    highlighted.forEach((el) => {
      el.classList.remove('bg-yellow-200', 'bg-orange-500', 'text-black', 'text-white', 'rounded-sm');
    });
  };

  const handleSearch = () => {
    clearHighlights();
    if (!searchTerm.trim()) {
      setMatches([]);
      setCurrentIndex(-1);
      return;
    }

    if (!viewerRef.current) return;

    // Find all spans/divs inside the viewer that contain the text
    // react-xml-viewer usually renders values inside <span> tags
    const allElements = viewerRef.current.querySelectorAll('span');
    const foundMatches = [];

    allElements.forEach((el) => {
      if (el.textContent.toLowerCase().includes(searchTerm.toLowerCase()) && el.children.length === 0) {
        foundMatches.push(el);
      }
    });

    setMatches(foundMatches);
    if (foundMatches.length > 0) {
      setCurrentIndex(0);
      highlightMatch(foundMatches, 0);
    } else {
      setCurrentIndex(-1);
    }
  };

  const highlightMatch = (matchList, index) => {
    clearHighlights();
    const current = matchList[index];
    if (current) {
      // Highlight all matches lightly
      matchList.forEach(m => m.classList.add('bg-yellow-200', 'text-black'));
      
      // Highlight active match strongly
      current.classList.add('bg-orange-500', 'text-white', 'rounded-sm');
      current.scrollIntoView({ behavior: 'smooth', block: 'center' });
    }
  };

  const nextMatch = () => {
    const nextIdx = (currentIndex + 1) % matches.length;
    setCurrentIndex(nextIdx);
    highlightMatch(matches, nextIdx);
  };

  const prevMatch = () => {
    const prevIdx = (currentIndex - 1 + matches.length) % matches.length;
    setCurrentIndex(prevIdx);
    highlightMatch(matches, prevIdx);
  };

  return (
    <div className="flex h-full min-h-[300px] flex-col gap-4">
      {/* Search Header */}
      <div className="flex shrink-0 items-center gap-2 dark:bg-gray-800 p-2 rounded-t-lg border-b border-gray-200 dark:border-gray-600">
        <input
          type="text"
          placeholder="Search XML"
          className="flex-grow p-1 px-3 text-sm rounded border border-gray-300 dark:bg-gray-900 dark:border-gray-600 outline-none focus:ring-2 focus:ring-blue-500"
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          onKeyDown={(e) => e.key === 'Enter' && handleSearch()}
        />
        <button 
          onClick={handleSearch}
          className="px-3 py-1 bg-emerald-600 hover:bg-emerald-700 text-white text-xs rounded"
        >
          Find
        </button>
        <div className="flex items-center gap-1 ml-2">
          <button 
            disabled={matches.length === 0}
            onClick={prevMatch}
            className="p-1 px-2 bg-gray-200 dark:bg-gray-700 rounded disabled:opacity-50 text-xs"
          >
            Prev
          </button>
          <span className="text-xs min-w-[50px] text-center">
            {matches.length > 0 ? `${currentIndex + 1} / ${matches.length}` : '0 / 0'}
          </span>
          <button 
            disabled={matches.length === 0}
            onClick={nextMatch}
            className="p-1 px-2 bg-gray-200 dark:bg-gray-700 rounded disabled:opacity-50 text-xs"
          >
            Next
          </button>
        </div>
      </div>

      {/* Flex shim: min-h-0 so this column can shrink; inner viewer keeps min 300px + scroll */}
      <div className="flex min-h-0 flex-1 flex-col">
        <div
          ref={viewerRef}
          className="min-h-[300px] flex-1 overflow-auto rounded-lg border border-gray-200 bg-white p-4 text-gray-900 dark:border-gray-700 dark:bg-gray-700 dark:text-white"
        >
          <XMLViewer collapsible={collapsible} xml={xmlData ?? ''} />
        </div>
      </div>
    </div>
  );
};

export default XMLSearchableContainer;