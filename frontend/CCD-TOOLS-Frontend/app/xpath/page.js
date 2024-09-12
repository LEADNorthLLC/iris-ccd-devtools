import React from 'react'
import { TestComponent } from '@/components'
import { xpaths } from '@/constants/options'

const XPath = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
      <h1 className='m-4'>
        XPath
      </h1>
      <TestComponent options={xpaths} />
    </div>
  )
}

export default XPath
