require_relative 'thermostaat.rb'

main = Thermostaat.new
read = Input.new

read.download
change.compare(1,20)
