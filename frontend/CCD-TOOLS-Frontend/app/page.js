import Image from "next/image";
import { links } from '@/constants/nav'
import Link from "next/link";
import { FileText, BookOpen, HelpCircle, ArrowRight } from 'lucide-react';

export default function Home() {
  return (
    <div className="w-full p-4">
      {/* Main Tools Grid */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {links && links.map((link) => (
          <Link key={link.to} href={link.to} className="block">
            <div className="bg-white cursor-pointer dark:bg-gray-800 rounded-lg shadow-lg p-6 border-t-4 border-emerald-500 h-full">
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-2">{link.display}</h3>
              <p className="text-gray-600 dark:text-gray-400 mb-4">
                {link.desc && (
                  <span className="text-gray-600 dark:text-gray-400">
                    {link.desc}
                  </span>
                )}
              </p>
            </div>
          </Link>
        ))}
      </div>

      {/* Getting Started Section */}
      <div className="mt-12">
        <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-6">Getting Started</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
          {/* Quick Start Guide */}
          <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg p-6">
            <div className="flex items-center mb-4">
              <BookOpen className="w-6 h-6 text-emerald-500 mr-3" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Quick Start Guide</h3>
            </div>
            <ul className="space-y-3 text-gray-600 dark:text-gray-400">
              <li className="flex items-start">
                <span className="text-emerald-500 mr-2">1.</span>
                Choose a tool from the grid above based on your needs
              </li>
              <li className="flex items-start">
                <span className="text-emerald-500 mr-2">2.</span>
                Upload or input your data in the appropriate format
              </li>
              <li className="flex items-start">
                <span className="text-emerald-500 mr-2">3.</span>
                Use the tool&apos;s features to process and validate your data
              </li>
              <li className="flex items-start">
                <span className="text-emerald-500 mr-2">4.</span>
                Download or view your results
              </li>
            </ul>
          </div>

          {/* Helpful Resources */}
          <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg p-6">
            <div className="flex items-center mb-4">
              <HelpCircle className="w-6 h-6 text-emerald-500 mr-3" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">Helpful Resources</h3>
            </div>
            <div className="space-y-4">
              <Link 
                href="/docs/xpath" 
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center text-emerald-600 dark:text-emerald-400 hover:text-emerald-700 dark:hover:text-emerald-300"
              >
                <FileText className="w-5 h-5 mr-2" />
                <span>XPath Syntax Guide</span>
                <ArrowRight className="w-4 h-4 ml-2" />
              </Link>
              <Link 
                href="/docs/transforms" 
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center text-emerald-600 dark:text-emerald-400 hover:text-emerald-700 dark:hover:text-emerald-300"
              >
                <FileText className="w-5 h-5 mr-2" />
                <span>CCDA to SDA Transformation Guide</span>
                <ArrowRight className="w-4 h-4 ml-2" />
              </Link>
              <Link 
                href="/docs/xsl" 
                target="_blank"
                rel="noopener noreferrer"
                className="flex items-center text-emerald-600 dark:text-emerald-400 hover:text-emerald-700 dark:hover:text-emerald-300"
              >
                <FileText className="w-5 h-5 mr-2" />
                <span>XSL Template Documentation</span>
                <ArrowRight className="w-4 h-4 ml-2" />
              </Link>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
