class LinebotController < ApplicationController
  require 'line/bot'
  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
    end
  end

  def recieve
    page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
    limit_tasks = Task.where(user_id: current_user.id, page_id: page).where(updated_at: Time.now - 10.minutes...Time.now)
    limit_tasks.each do |t|
      message = {
        type: 'text',
        text: 'hello'
      }
      response = client.push_message(user_id, message)
      p response
    end
  end
end
