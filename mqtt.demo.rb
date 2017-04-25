require "mqtt"

temperature_topic = 'softwareengineering/temperature/+'
# Subscribe example
MQTT::Client.connect('mqtt.labict.be') do |client|
  # If you pass a block to the get method, then it will loop
  while true
  client.get(temperature_topic) do |topic,message|
    puts "#{topic}: #{message}"
  end
end
end
