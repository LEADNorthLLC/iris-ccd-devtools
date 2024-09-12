import React from 'react'
import { TestComponent } from '@/components'
import { xsl } from '@/constants/options';
import { xslLabels } from '@/constants/labels';

const XSL = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
      <h1 className='m-4 text-lg'>
        {xslLabels.pageTitle}
      </h1>
      <TestComponent options={xsl} labels={xslLabels}  largeInput={false}/>
    </div>
  )
}

export default XSL
