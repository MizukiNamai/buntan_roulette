class Api::TasksController < ApplicationController
  def show
    date= Page.order(updated_at: :desc).limit(1).pluck(:participant).max
    @tasks = Task.where(user_id: current_user.id).where(updated_at: Time.zone.today.beginning_of_day...Time.zone.today.end_of_day).to_sql
binding.pry
    respond_to do |format|
      format.html
      format.json {render json: @tasks}
    end
  end
end
