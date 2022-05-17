class RoulettesController < ApplicationController
  def new
    hash = formdate_params
    array = hash.values
    @form1 = array[0]
    @form2 = array[1]
    @form3 = array[2]
    @form4 = array[3]
    @form5 = array[4]
    @form6 = array[5]
    @form7 = array[6]
    @form8 = array[7]
    @form9 = array[8]
  end

  def create; end

  private

  def formdate_params
    params.require(:formdate).permit(:form1, :form2, :form3, :form4, :form5, :form6, :form7, :form8)
  end
end
