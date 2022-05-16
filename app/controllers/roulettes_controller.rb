class RoulettesController < ApplicationController
  def new
    hash = params[:formdate]
    array = hash.values
    (1..array.size).each do |i|
      binding.eval("@form#{i} = array[#{i}]")
    end
  end

  def create; end
end
