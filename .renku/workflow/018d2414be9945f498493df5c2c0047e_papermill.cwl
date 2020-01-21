arguments: []
baseCommand:
- papermill
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
  input_1:
    default:
      class: File
      path: ../../notebooks/01-CountFlights.ipynb
    inputBinding:
      position: 1
      separate: true
      shellQuote: true
    streamable: false
    type: File
  input_2:
    default: notebooks/01-CountFlights.ran.ipynb
    inputBinding:
      position: 2
      separate: true
      shellQuote: true
    streamable: false
    type: string
  input_3:
    default: input_path
    inputBinding:
      position: 3
      prefix: -p
      separate: true
      shellQuote: true
    streamable: false
    type: string
  input_4:
    default:
      class: File
      path: ../../data/output/2019-01-flights-filtered.csv
    inputBinding:
      position: 4
      separate: true
      shellQuote: true
    streamable: false
    type: File
  input_5:
    default: output_path
    inputBinding:
      position: 5
      prefix: -p
      separate: true
      shellQuote: true
    streamable: false
    type: string
  input_6:
    default: data/output/2019-01-flights-count.txt
    inputBinding:
      position: 6
      separate: true
      shellQuote: true
    streamable: false
    type: string
outputs:
  output_0:
    outputBinding:
      glob: $(inputs.input_6)
    streamable: false
    type: File
  output_1:
    outputBinding:
      glob: $(inputs.input_2)
    streamable: false
    type: File
permanentFailCodes: []
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: '$({"listing": [], "class": "Directory"})'
    entryname: notebooks
    writable: true
  - entry: '$({"listing": [], "class": "Directory"})'
    entryname: data/output
    writable: true
  - entry: $(inputs.input_1)
    entryname: notebooks/01-CountFlights.ipynb
    writable: false
  - entry: $(inputs.input_4)
    entryname: data/output/2019-01-flights-filtered.csv
    writable: false
successCodes: []
temporaryFailCodes: []
