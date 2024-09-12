import React from 'react'
import { TestComponent } from '@/components'
import { transforms } from '@/constants/options'

const Transform = () => {
  return (
    <div className='m-5 bg-slate-300 rounded-md'>
        <h1 className='m-4'>
            Transform
        </h1>
      <TestComponent options={transforms} />
    </div>
  )
}

export default Transform
