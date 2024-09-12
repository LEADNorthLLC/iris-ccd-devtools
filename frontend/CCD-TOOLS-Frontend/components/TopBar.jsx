import React from 'react'
import Link from "next/link";
import Image from 'next/image';
import logo from '../app/LEAD_logo.png'

const TopBar = () => {
  return (
    <div className='h-24 w-screen bg-slate-700 relative  overflow-hidden'>
      <Link href='/'>
        <Image className='w-24 h-24' src={logo} alt='LEAD North logo'></Image>
      </Link>
    </div>
  )
}

export default TopBar
