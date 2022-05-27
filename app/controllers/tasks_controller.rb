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
    @tasks = Form::TaskCollection.new
  end

  def create
    @tasks = Form::TaskCollection.new(tasks_collection_params)
    @tasks.save
    redirect_to tasks_todo_path(@tasks)
  end

  def todo
    @tasks = Task.all
  end

  private

  def tasks_collection_params
      params.require(:tasks)
  end
end
