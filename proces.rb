class Proces

    attr_reader:range
    attr_reader:threshold
    attr_accessor:action

    def compare (range, threshold)
        @threshold = threshold
        if @downloaded_temperature < (threshold-range)
            @action = "verwarmen"
            puts "RED"
        elsif @downloaded_temperature < (threshold+range)
            @action = "afkoelen"
            puts "BLUE"
        else
            @action = "niets"
            puts "GREEN"

    end
end
end
