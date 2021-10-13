# frozen_string_literal: true

def cumulative_sum(input_array:)
  output_array = []
  input_array.each_with_index do |value, index|
    output_array << value + output_array[index-1].to_i
  end
  output_array
end
