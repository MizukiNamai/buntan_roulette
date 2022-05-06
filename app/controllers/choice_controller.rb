class ChoiceController < ApplicationController
  def new
    @choice = Choice.new
  end

  def create
    @choice = Choice.create(choice_params)
    @choice.save
  end
end
