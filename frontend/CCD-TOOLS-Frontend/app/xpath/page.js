import React from 'react'
import { TestComponent } from '@/components'
import { xpaths } from '@/constants/options'
import { xpathLabels } from '@/constants/labels'

const XPath = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
      <h1 className='m-4'>
        {xpathLabels.pageTitle}
      </h1>
      <TestComponent options={xpaths} labels={xpathLabels} />
    </div>
  )
}

export default XPath
