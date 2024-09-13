import React from 'react'
import { TestComponent } from '@/components'
import { xsl } from '@/constants/options';
import { xslLabels } from '@/constants/labels';

const XSL = () => {
  return (
    <div className='m-5 bg-slate-400 rounded-md'>
      <h1 className='m-4 title'>
        {xslLabels.pageTitle}
      </h1>
      <TestComponent options={xsl} labels={xslLabels}  largeInput={false} baseUrl='http://localhost:62773' url='/csp/visualizer/service/xpath/'/>
    </div>
  )
}

export default XSL
