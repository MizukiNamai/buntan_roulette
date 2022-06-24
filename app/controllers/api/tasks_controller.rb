class Api::TasksController < ApplicationController
  def show
    page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
    @tasks = Task.where(user_id: current_user.id, page_id: page).where(updated_at: Time.now - 10.minutes...Time.now)
    Page.order(updated_at: :desc).limit(1).reload
    respond_to do |format|
      format.html
      format.json { render json: @tasks }
    end
  end
end
