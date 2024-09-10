'use client'
 
import { useRouter } from 'next/navigation'
import React from 'react'
import { links } from '@/constants/nav'


const Sidebar = () => {
    const router = useRouter()

    return (
        <div>
            {
                links && links.map((link) => (
                    <div onClick={() => router.push(link.to)}>{link.display}</div>
                ))
            }
        </div>
    )
}

export default Sidebar
