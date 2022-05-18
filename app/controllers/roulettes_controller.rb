class RoulettesController < ApplicationController
  def new
    @form1 = params[:form1]
    @form2 = params[:form2]
    @form3 = params[:form3]
    @form4 = params[:form4]
    @form5 = params[:form5]
    @form6 = params[:form6]
    @form7 = params[:form7]
    @form8 = params[:form8]
    @task = Task.new
  end

  def create
  hash = todolist_params
  binding.pry
  @task = Task.new(todolist_params)
  end

  private

  def todolist_params
    params.require(:todoform).permit(:name, :task, :status, :roulette_id)
  end
end
