# this is a test file for lint.yml GitHub Action 

params.input_file = input.tsv

process foo {
    input:
  file input_file

  output:
  file "output.txt"

  """
  cat $input_file > output.txt
  """
}

workflow {
  foo(input_file)
}
