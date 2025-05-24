'use client'

import TestComponent from '@/components/TestComponent'

const fhirsdatransforms = [
  { value: 'FHIRtoSDA', desc: 'FHIR to SDA Transform' },
  { value: 'FHIRtoSDA_2_0', desc: 'FHIR to SDA 2.0 Transform' },
  { value: 'FHIRtoSDA_2_1', desc: 'FHIR to SDA 2.1 Transform' }
]

const fhirsdatransformLabels = {
  pageTitle: 'FHIR to SDA Transforms Tester',
  inputLabelOne: 'FHIR to SDA Transform',
  inputLabelTwo: 'Input FHIR',
  outputLabel: 'Output',
  exInputLabelOne: 'EX. TODO....',
  exInputLabelTwo: 'Enter FHIR JSON',
  exOutputLabel: 'SDA output will appear here'
}

export default function FHIRSDATransform() {
  return (
    <div>
      <TestComponent 
        options={fhirsdatransforms} 
        labels={fhirsdatransformLabels} 
        baseUrl='http://localhost:62773' 
        url='/csp/visualizer/service/fhirsdatransform/' 
      />
    </div>
  )
}
