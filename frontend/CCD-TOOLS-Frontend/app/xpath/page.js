import React from 'react'
import { TestComponent } from '@/components'
import { xpaths } from '@/constants/options'
import { xpathLabels } from '@/constants/labels'

const XPath = () => {
  return (
    <div className='m-5 bg-slate-400 rounded-md'>
      <h1 className='m-4 title'>
      {xpathLabels.pageTitle}
      </h1>
      <TestComponent options={xpaths} labels={xpathLabels} baseUrl='http://localhost:62773' url='/csp/visualizer/service/xpath/' />
    </div>
  )
}

export default XPath
