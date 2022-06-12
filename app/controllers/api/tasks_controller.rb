class Api::TasksController < ApplicationController
  def show
    @tasks = Task.all
    respond_to do |format|
      format.html
      format.json {render json: @tasks}
    end
    require 'json'
    File.open("sample.json", "a") do |file|
      hash = {"ID" => 1, "title" => "memo", "content" => "1 memo"}
      JSON.dump(hash, file)
    end
  end
end
