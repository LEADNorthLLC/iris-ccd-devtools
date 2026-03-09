'use client'

import { Sidebar, TopBar } from "@/components";
import Image from "next/image";
import Link from 'next/link';
import { Menu, X, Sun, Moon, LayoutDashboard, FileCheck, ChevronRight, User, LogOut, FileCode, FileSearch, FileCode2 } from 'lucide-react';
import { useRouter, usePathname } from 'next/navigation'
import React, { useState, useEffect } from 'react'
import { links } from '@/constants/nav'
import logo from './LEAD_logo.png'

export default function ClientLayout({ children }) {
  const [sidebarOpen, setSidebarOpen] = useState(true);
  const [isMobile, setIsMobile] = useState(false);

  const router = useRouter()
  const pathname = usePathname()

  useEffect(() => {
    const handleResize = () => {
      const mobile = window.innerWidth < 768;
      setIsMobile(mobile);
      // Only close sidebar on mobile
      if (mobile) {
        setSidebarOpen(false);
      } else {
        setSidebarOpen(true);
      }
    };

    // Set initial state
    handleResize();

    window.addEventListener('resize', handleResize);
    return () => window.removeEventListener('resize', handleResize);
  }, []); // Empty dependency array

  const menuItems = [
    { path: '/', icon: <LayoutDashboard className="w-5 h-5 dark:stroke-gray-300" />, label: 'Dashboard' },
    { path: '/xpath', icon: <FileSearch className="w-5 h-5 dark:stroke-gray-300" />, label: 'XPath Evaluator' },
    {
      path: '/transform',
      icon: <FileCode className="w-5 h-5 dark:stroke-gray-300" />,
      label: 'CCDA to SDA Transforms',
    },
    {
      path: '/xsl',
      icon: <FileCode2 className="w-5 h-5 dark:stroke-gray-300" />,
      label: 'XSL Template Tester',
    },
    { type: 'separator' },
    {
      path: '/fhirsdatransform',
      icon: <FileCode className="w-5 h-5 dark:stroke-gray-300" />,
      label: 'FHIR to SDA Transforms',
    },
    {
      path: '/sdafhirtransform',
      icon: <FileCode className="w-5 h-5 dark:stroke-gray-300" />,
      label: 'SDA to FHIR Transforms',
    },
    { type: 'separator' },
    {path: '/hl7sdatransform', 
      icon: <FileCode className="w-5 h-5 dark:stroke-gray-300" />, 
      label: 'HL7 to SDA Transforms'},
  ];

  const closeSidebarIfMobile = () => {
    if (isMobile) setSidebarOpen(false);
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 transition-colors duration-200">
      {/* Mobile Overlay */}
      {isMobile && sidebarOpen && (
        <div
          className="fixed inset-0 bg-black/50 z-20"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      {/* Sidebar */}
      <div
        className={`fixed top-0 left-0 h-full bg-white dark:bg-gray-800 transition-all duration-300 z-30
          ${sidebarOpen ? 'w-64 translate-x-0' : 'w-0 md:w-20 -translate-x-full md:translate-x-0'} 
          border-r border-gray-200 dark:border-gray-700`}
      >
        <div className="flex items-center justify-between p-4">
          {sidebarOpen && (
            <div className="flex items-center space-x-3">
              <Image className='h-[30px] w-auto object-cover rounded' src={logo} alt='LEAD North logo'></Image>
              <span className="text-xs font-semibold dark:text-white">IRIS Interoperability DevTools</span>
            </div>
          )}
          <button
            onClick={() => {
              console.log('Current sidebar state:', sidebarOpen);
              setSidebarOpen(prev => !prev);
            }}
            className="p-2 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700 visible"
            aria-label={sidebarOpen ? "Close sidebar" : "Open sidebar"}
          >
            {sidebarOpen ? (
              <ChevronRight className="w-5 h-5 dark:text-white dark:stroke-gray-300 dark:fill-gray-300" />
            ) : (
              <Menu className="w-5 h-5 dark:text-white dark:stroke-gray-300 dark:fill-gray-300" />
            )}
          </button>
        </div>

        <nav className="mt-4">
          {menuItems.map((item, index) => (
            item.type === 'separator' ? (
              <div key={`separator-${index}`} className="my-4 border-t border-gray-200 dark:border-gray-700" />
            ) : (
              <div key={item.path}>
                <Link
                  href={item.path}
                  onClick={closeSidebarIfMobile}
                  className={`flex items-center px-4 py-3 ${
                    pathname === item.path
                      ? 'bg-emerald-50 dark:bg-emerald-900/20 text-emerald-600 dark:text-emerald-400'
                      : 'text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700'
                  }`}
                >
                  {item.icon}
                  {sidebarOpen && <span className="ml-3 dark:text-gray-300">{item.label}</span>}
                </Link>
                {sidebarOpen && item.subItems && (
                  <div className="ml-11 mt-1 space-y-1">
                    {item.subItems.map((subItem) => (
                      <Link
                        key={subItem.path}
                        href={subItem.path}
                        onClick={closeSidebarIfMobile}
                        className="block py-2 text-sm text-gray-600 dark:text-gray-400 hover:text-emerald-600 dark:hover:text-emerald-400"
                      >
                        {subItem.label}
                      </Link>
                    ))}
                  </div>
                )}
              </div>
            )
          ))}
        </nav>
      </div>

      {/* Mobile Header */}
      <div className="md:hidden fixed top-0 left-0 right-0 h-16 bg-white dark:bg-gray-800 border-b border-gray-200 dark:border-gray-700 z-20">
        <div className="flex items-center justify-between px-4 h-full">
          <button
            onClick={() => setSidebarOpen(true)}
            className="p-2 rounded-lg hover:bg-gray-100 dark:hover:bg-gray-700"
          >
            <Menu className="w-6 h-6 dark:text-white" />
          </button>
          <div className="flex items-center space-x-3">
            <div className="w-8 h-8 bg-emerald-600 rounded-lg"></div>
            <span className="font-semibold dark:text-white">DQS</span>
          </div>
        </div>
      </div>

      {/* Main content wrapper */}
      <div 
        className={`flex-1 flex flex-col min-h-screen transition-all duration-300
          ${sidebarOpen ? 'md:ml-64' : 'md:ml-20'} 
          ${isMobile ? 'mt-16' : ''}`}
      >
        {/* Gradient Header */}
        <div className="relative">
          <div className="absolute inset-0 bg-emerald-900 dark:bg-emerald-950" />
          <div className="relative px-6 py-4 h-16">
            <div className="flex items-center justify-between">
              <h1 className="text-lg font-bold text-white uppercase">
                {menuItems.find(item => item.path === pathname)?.label}
              </h1>

            </div>
          </div>
        </div>

        {/* Page Content */}
        <main className="flex-1 p-4 md:p-6 -mt-8">
          <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg">
            <div className="p-4 md:p-6">
              {children}
            </div>
          </div>
        </main>

        {/* Footer */}
        <footer className="mt-auto bg-emerald-900 dark:bg-emerald-950">
          <div className="container mx-auto px-4 py-4">
            <div className="flex flex-col md:flex-row md:items-center md:justify-end space-y-2 md:space-y-0 md:space-x-4 text-xs md:text-sm text-emerald-200">
              <span className="text-center md:text-right text-white">Iris Interoperability Dev Tools</span>
              
            </div>
          </div>
        </footer>
      </div>
    </div>
  );
} 