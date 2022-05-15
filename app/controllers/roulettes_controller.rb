class RoulettesController < ApplicationController
  def new
    hash = params[:formdate]
    varcar = hash.values
    (1..8).each do |i|
      eval("@form#{i} = varcar[#{i}]")
    end
  end

  def create; end
end
