class Api::TasksController < ApplicationController
  def show
    @tasks = Task.where(user_id: current_user.id).where(updated_at: Time.now - 3.minute...Time.now)
    respond_to do |format|
      format.html
      format.json {render json: @tasks}
    end
  end
end
