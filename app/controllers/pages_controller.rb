class PagesController < ApplicationController
  def top; end

  def guide; end

  def choice; end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save!
    redirect_to new_task_path
  end

  private

  def page_params
    params.require(:page).permit(:participant)
  end
end
