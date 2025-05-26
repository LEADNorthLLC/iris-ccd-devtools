'use client'

import TestComponent from '@/components/TestComponent'

const sdafhirtransforms = [
  { value: 'SDAtoFHIR', desc: 'SDA to FHIR Transform' },
]

const sdafhirtransformLabels = {
  pageTitle: 'SDA to FHIR Transforms Tester',
  inputLabelOne: 'SDA to FHIR Transform',
  inputLabelTwo: 'Input SDA',
  outputLabel: 'Output',
  exInputLabelOne: 'EX. SDAtoFHIR',
  exInputLabelTwo: 'Enter SDA XML',
  exOutputLabel: 'FHIR output will appear here'
}

export default function SDAFHIRTransform() {
  return (
    <div>
 
      <TestComponent 
        options={sdafhirtransforms} 
        labels={sdafhirtransformLabels} 
        baseUrl='http://localhost:62773' 
        url='/csp/visualizer/service/sdafhirtransform/'
      />
    </div>
  )
}
