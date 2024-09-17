'use client'
 
import { useRouter, usePathname } from 'next/navigation'
import React from 'react'
import { links } from '@/constants/nav'


const Sidebar = () => {
    const router = useRouter()
    const pathname = usePathname()

    return (
        <div className='w-2/12 h-screen customGrey relative flex flex-col items-center overflow-hidden pt-10 border-r-2 border-slate-500 shadow-sm'>
            {
                links && links.map((link) => (
                    <div key={link.to} className={`text-gray-900 w-full p-4 cursor-pointer hover:text-white border border-gray-700 hover:bg-gray-900 focus:ring-4 focus:outline-none focus:ring-gray-300 font-medium  text-sm px-5 py-2.5 text-center me-2 mb-2  border-l-0 border-r-0 border-t-0 ${pathname === link.to ? "bg-gray-200" : ''}`} onClick={() => router.push(link.to)}>{link.display}</div>
                ))
            }
        </div>
    )
}

export default Sidebar
