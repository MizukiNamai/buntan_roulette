class Api::TasksController < ApplicationController
  def show
    @tasks = Task.select MAX(created_date) from tables group by page_id;
binding.pry
    respond_to do |format|
      format.html
      format.json {render json: @tasks}
    end
  end
end
