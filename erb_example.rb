require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)
x = "This is a string"
puts template.result(binding)
template = ERB.new "The value of x is: <%= x %>"
x = {key: 'value'}
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)