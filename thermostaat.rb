class Thermostaat

    require_relative 'thermostaat.rb'
    require_relative 'input.rb'
    require_relative 'proces.rb'
    
    require 'open-uri'

    def geef_temperatuur
        read = Input.new
        read.download

    end

    def range
        @range = 1
    end

    def threshold
        @threshold = 20
    end

    def proces
        change = Proces.new
        change.compare(@range,@threshold)
end

end
=begin

attr_accessor :range


    def ask_temperature
        puts "what is the temperature?"
    end

    def get_temperature
        @temperature = gets.to_i

    def ask_max
        puts "what is the maximum temperature?"
    end

    def get_max
        @maximum = gets.to_i
    end

    def ask_min
        puts "what is the minimum temperature?"
    end

    def get_min
        @minimum =gets.to_i
    end

    def temperatuur
        if @maximum < @temperature
            puts "Cooling"
        elsif @minimum > @temperature
            puts "Heating".red
        else
            puts "Standby"
    end
end
=end
