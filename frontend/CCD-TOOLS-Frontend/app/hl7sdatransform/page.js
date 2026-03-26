'use client'

import TestComponent from '@/components/TestComponent'

const HL7sdatransforms = [
  { value: 'HL7ToSDA', desc: 'HL7 to SDA Transform' },
]

const HL7sdatransformLabels = {
  pageTitle: 'HL7 to SDA Transforms Tester',
  inputLabelOne: 'HL7 to SDA Transform',
  inputLabelTwo: 'Input HL7',
  outputLabel: 'Output',
  exInputLabelOne: 'EX. HL7ToSDA',
  exInputLabelTwo: 'Enter HL7 Message',
  exOutputLabel: 'SDA output will appear here'
}

export default function HL7SDATransform() {
  return (
    <div>
      <TestComponent 
        options={HL7sdatransforms}
        labels={HL7sdatransformLabels} 
        baseUrl='http://localhost:62773' 
        url='/csp/visualizer/service/hl7sdatransform/' 
        hl7ToAllUrl='/csp/visualizer/service/hl7toall/'
      />
    </div>
  )
}
