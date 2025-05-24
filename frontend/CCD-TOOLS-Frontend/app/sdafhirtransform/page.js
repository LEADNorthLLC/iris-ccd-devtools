'use client'

import TestComponent from '@/components/TestComponent'

const sdafhirtransforms = [
  { value: 'SDAtoFHIR', desc: 'SDA to FHIR Transform' },
  { value: 'SDAtoFHIR_2_0', desc: 'SDA to FHIR 2.0 Transform' },
  { value: 'SDAtoFHIR_2_1', desc: 'SDA to FHIR 2.1 Transform' }
]

const sdafhirtransformLabels = {
  pageTitle: 'SDA to FHIR Transforms Tester',
  inputLabelOne: 'SDA to FHIR Transform',
  inputLabelTwo: 'Input SDA',
  outputLabel: 'Output',
  exInputLabelOne: 'EX. TODO....',
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