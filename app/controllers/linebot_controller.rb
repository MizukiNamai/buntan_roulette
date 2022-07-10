class LinebotController < ApplicationController
  require 'line/bot'  # gem 'line-bot-api'

  def client
    @client ||= Line::Bot::Client.new { |config|
      config.channel_secret = ENV["LINE_CHANNEL_SECRET"]
      config.channel_token = ENV["LINE_CHANNEL_TOKEN"]
    }
  end

  def push
    page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
    limit_tasks = Task.where(user_uid: current_user.uid, page_id: page).where(updated_at: Time.now - 60.minutes...Time.now)
    binding.pry
    limit_tasks.each do |t|
      message = {
          type: 'text',
          text: "「#{t.name}」:「#{t.task}」"
      }
      response = client.push_message(t.user_uid, message)
      p response
    end
  end
end
