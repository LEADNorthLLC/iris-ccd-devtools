import React from 'react'
import { TestComponent } from '@/components'
import { xsl } from '@/constants/options';

const XSL = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
      <h1 className='m-4'>
        XSL
      </h1>
      <TestComponent options={xsl} />
    </div>
  )
}

export default XSL
