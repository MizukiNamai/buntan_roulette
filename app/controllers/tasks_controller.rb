class TasksController < ApplicationController
  def new
    @page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
    if params[:formdate].present?
      @hiddenform = formdate_params.values
      (1..@hiddenform.size).each do |i|
        var = "@form#{i}"
        binding.eval("#{var} = @hiddenform[#{i}-1]")
      end
    end
    @user = current_user.id if user_signed_in?
    @tasks = Form::TaskCollection.new
  end

  def create
    @tasks = Form::TaskCollection.new(tasks_collection_params)
    @tasks.save
    redirect_to api_tasks_show_path
  end

  private

  def tasks_collection_params
    params.require(:tasks)
  end

  def formdate_params
    params.require(:formdate).permit(:task1, :name1, :task2, :name2, :task3, :name3, :task4, :name4,
                                     :task5, :name5, :task6, :name6, :task7, :name7, :task8, :name8, :task9, :name9, :task10, :name10)
  end
end
