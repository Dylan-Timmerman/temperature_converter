require "./temperature_converter.rb"
require "open-uri"

input = ARGV.first.to_f

temperature_converter = TemperatureConverter.new input
puts temperature_converter.to_text
puts temperature_converter.to_json
puts temperature_converter.to_html

temperature_converter = TemperatureConverter.new open('http://labict.be/software-engineering/temperature/api/temperature/fake') { |f| f.read }
puts temperature_converter.to_text
puts temperature_converter.to_json
puts temperature_converter.to_html

temperature_converter = TemperatureConverter.new File.read("temp.txt")
puts temperature_converter.to_text
puts temperature_converter.to_json
puts temperature_converter.to_html
