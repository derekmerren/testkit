class ArraysController < ApplicationController
  def index
    @array_1 = [[1,2,[3]],4]
    @array_2 = [[1,2,[3,6,[9]]],4,[9,[8,[9,3,3]]],0,9]
    @array_3 = [1,5,[3,6,[9,8,6,[1],2,[[9,2],1,22,73,[9,[7,[9,[76,[9,8,[9,7,[72,9,37,1,[8,9]]]]]]]]]]]]
    @array_4 = [1,5,[3,6],[1],[],9]

    @flattened_1 = flatten_array(@array_1)
    @flattened_2 = flatten_array(@array_2)
    @flattened_3 = flatten_array(@array_3)
    @flattened_4 = flatten_array(@array_4)

  end

  private

  def flatten_array array
    # If element is not an array return it as part of single element array.
    # it does not need to be flattened.
    return [array] unless array.kind_of?(Array)

    # Otherwise flatten each element of the array and add it to the new array
    # called flattened.
    flattened = []
    array.each do |a|
      # As each element could be another array or a single element we pass it
      # into the flatten_array method. Calling this recursively allows the method
      # to handle any level of nesting.
      flattened += flatten_array(a)
    end
    return flattened
  end
end
