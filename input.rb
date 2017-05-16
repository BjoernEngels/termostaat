require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE
require "open-uri"

class Input

    attr_reader:temperature

    def download
        @downloaded_temperature = (URI.parse('https://labict.be/software-engineering/temperature/api/temperature/fake').read).to_f
        return @downloaded_temperature
    end

end
