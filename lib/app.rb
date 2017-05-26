require 'optparse'
require_relative "input.rb"
require_relative "proces.rb"
require_relative "mqtt.demo.rb"

input = Input.new
proces = Proces.new
mqtt.demo = MQTT.DEMO.new

options = {:temperature => nil,
    :range => 1, :threshold => 20, :method=> nil}

    parser = OptionParser.new do |opts|
        opts.banner = "Thermostat application: app.rb [options]"

        opts.on('-m', '--method M', String, 'Where do you get the temperature from (mqtt, url, self) ') do |method|
            options[:method] = method
        end

        opts.on('-r', '--range R' , Float , 'temperature range') do |range|
            options[:range] = range
        end

        opts.on('-t', '--threshold T', Float, 'Desired temperature') do |threshold|
            options[:threshold] = threshold
        end

        opts.on('-h', '--help', 'Displays Help') do
            puts opts
            exit
        end
    end

    parser.parse!

    if options[:method] =='mqtt'
        mqtt.on_change do |temp|
            puts temp
            mqtt.send(led.get_color)
        end
        mqtt.get
    end
    if options[:method] == 'url'
        update = Thread.new do
            while true do
                puts ""
                temp = input.url

                sleep (5)
            end
        end
        update.join

    end
