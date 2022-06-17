class Api::TasksController < ApplicationController
  def show
    @tasks = Task.where(user_id: current_user.id).where(updated_at: Time.now - 1.hours...Time.now)
    respond_to do |format|
      format.html
      format.json { render json: @tasks }
    end
  end
end
