class TasksController < ApplicationController
  def new
    hash = formdate_params
    array = hash.values
    (1..array.size).each do |i|
      var = "@form#{i}"
      binding.eval("#{var} = array[#{i}-1]")
    end
    @tasks = Form::TaskCollection.new
  end

  def create
    @tasks = Form::TaskCollection.new(tasks_collection_params)
    @tasks.save
    redirect_to tasks_todo_path
  end

  def todo
    @tasks = Task.all
  end

  def form
    @form1 = params[:text1]
  end

  private

  def tasks_collection_params
    params.require(:tasks)
  end

  def formdate_params
    params.require(:formdate).permit(:form1, :form2, :form3, :form4, :form5, :form6, :form7, :form8, :form9)
  end
end
