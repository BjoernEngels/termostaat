class Proces

    attr_reader:range
    attr_reader:threshold
    attr_accessor:action

    def compare (range, threshold)
        @threshold = threshold
        if @downloaded_temperature < (threshold-range)
            @action = "verwarmen"
        elsif @downloaded_temperature < (threshold+range)
            @action = "afkoelen"
        else
            @action = "niets"

    end
end
end
