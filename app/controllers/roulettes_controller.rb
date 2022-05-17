class RoulettesController < ApplicationController
  def new
    hash = formdate_params
    array = hash.values
    (1..array.size).each do |i|
      var = "@form#{i}"
      binding.eval("#{var} = array[#{i}-1]")
    end
  end

  def create; end

  private

  def formdate_params
    params.require(:formdate).permit(:form1, :form2, :form3, :form4, :form5, :form6, :form7, :form8)
  end
end
