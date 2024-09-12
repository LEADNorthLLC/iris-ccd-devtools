import React from 'react'
import { TestComponent } from '@/components'
import { transforms } from '@/constants/options'
import { transformLabels } from '@/constants/labels'

const Transform = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
        <h1 className='m-4'>
            {transformLabels.pageTitle}
        </h1>
      <TestComponent options={transforms} labels={transformLabels} />
    </div>
  )
}

export default Transform
