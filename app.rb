require_relative 'thermostaat.rb'

foo = Thermostaat.new
read = Input.new

read.download
change.compare(1,20)
require_relative "thermostaat.rb"



foo.ask_temperature
foo.get_temperature
foo.ask_max
foo.get_max
foo.ask_min
foo.get_min
foo.temperatuur
