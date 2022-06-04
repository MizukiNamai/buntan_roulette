class TasksController < ApplicationController
  def new
    @tasks = Form::TaskCollection.new

    if params[:formdate].present?
      hash = formdate_params
      array = hash.values
      (1..array.size).each do |i|
        var = "@form#{i}"
        binding.eval("#{var} = array[#{i}-1]")
      end
    end

    @page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
  end

  def create
    @tasks = Form::TaskCollection.new(tasks_collection_params)
    @tasks.save
    redirect_to tasks_todo_path
  end

  def todo
    @tasks = Task.all
  end

  private

  def tasks_collection_params
    params.require(:tasks)
  end

  def formdate_params
    params.require(:formdate).permit(:form1, :form2, :form3, :form4, :form5, :form6, :form7, :form8, :form9)
  end
end
