'use client'

import TestComponent from '@/components/TestComponent'

const fhirsdatransforms = [
  { value: 'FHIRToSDA', desc: 'FHIR to SDA Transform' },
]

const fhirsdatransformLabels = {
  pageTitle: 'FHIR to SDA Transforms Tester',
  inputLabelOne: 'FHIR to SDA Transform',
  inputLabelTwo: 'Input FHIR',
  outputLabel: 'Output SDA',
  exInputLabelOne: 'EX. FHIRToSDA',
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
