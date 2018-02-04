module Jekyll
  module InsertBeforeLastFilter
    # Inserts another string before the last occurrences of a string
    def insert_before_last(input, string, insertion = ''.freeze)
      # find last index of the search string
      last_index = input.rindex(string)
      # dissect, concat and return new string (the fastest of all benchmarks)
      output = "#{input[0...last_index]}#{insertion}#{input[last_index...-1]}" if last_index
      # fallback to input as-is if nothing found
      output || input
    end
  end
end

# register plugin
Liquid::Template.register_filter(Jekyll::InsertBeforeLastFilter)