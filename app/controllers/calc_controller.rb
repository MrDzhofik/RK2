# frozen_string_literal: true

# My controller
class CalcController < ApplicationController
  def input; end

  def show
    @arr_a = params[:array].split.map!(&:to_f)
    @otr = []
    @arr_a.each do |x|
      @otr.append(x) if x.negative?
    end
    find_a
    len = @arr_a.length - 1
    return unless len >= 3

    @arr_a[len - (len % 3)] = @a
    @index = len - (len % 3)
  end

  def find_a
    @a = if @otr.length.zero?
           0
         else
           @otr.inject(1) { |elem, multy| elem * multy }
         end
  end
end
