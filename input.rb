class Input

    attr_reader:temperature

    def download
        @downloaded_temperature = open('https://labict.be/software-engineering/temperature/api/temperature/fake') {|f| f.read }
    end

end
