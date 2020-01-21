arguments: []
baseCommand:
- python
class: CommandLineTool
cwlVersion: v1.0
hints: []
inputs:
  input_1:
    default:
      class: File
      path: ../../src/00-FilterFlights.py
    inputBinding:
      position: 1
      separate: true
      shellQuote: true
    streamable: false
    type: File
  input_2:
    default:
      class: File
      path: ../../data/201901_us_flights_1/2019-01-flights.csv.zip
    inputBinding:
      position: 2
      separate: true
      shellQuote: true
    streamable: false
    type: File
  input_3:
    default: data/output/2019-01-flights-filtered.csv
    inputBinding:
      position: 3
      separate: true
      shellQuote: true
    streamable: false
    type: string
outputs:
  output_0:
    outputBinding:
      glob: $(inputs.input_3)
    streamable: false
    type: File
permanentFailCodes: []
requirements:
- class: InlineJavascriptRequirement
- class: InitialWorkDirRequirement
  listing:
  - entry: '$({"listing": [], "class": "Directory"})'
    entryname: data/output
    writable: true
  - entry: $(inputs.input_1)
    entryname: src/00-FilterFlights.py
    writable: false
  - entry: $(inputs.input_2)
    entryname: data/201901_us_flights_1/2019-01-flights.csv.zip
    writable: false
successCodes: []
temporaryFailCodes: []
