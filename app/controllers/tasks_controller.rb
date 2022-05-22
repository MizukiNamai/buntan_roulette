class TasksController < ApplicationController
  def new
    @form1 = params[:form1]
    @form2 = params[:form2]
    @form3 = params[:form3]
    @form4 = params[:form4]
    @form5 = params[:form5]
    @form6 = params[:form6]
    @form7 = params[:form7]
    @form8 = params[:form8]
    @page = Form::TaskCollection.new
  end

  def create
    @page = Form::TaskCollection.new(params[:page])
    if @page.save
      binding.pry
      redirect_to tasks_todo_path
    else
      render :new
    end
  end

  def todo;end

end
