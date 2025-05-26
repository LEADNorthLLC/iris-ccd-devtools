import React from 'react'
import { TestComponent } from '@/components'
import { transforms } from '@/constants/options'
import { transformLabels } from '@/constants/labels'

const Transform = () => {
  return (
    <div className='m-5 customGrey rounded-md border-2 border-slate-500 shadow-sm'>
      <h1 className='m-4 title'>
      {transformLabels.pageTitle}
        </h1>
      <TestComponent options={transforms} labels={transformLabels} baseUrl='http://localhost:62773' url='/csp/visualizer/service/transform/' />
    </div>
  )
}

export default Transform
