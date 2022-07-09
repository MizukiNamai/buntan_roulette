class LinebotController < ApplicationController
  require 'line/bot'

  protect_from_forgery :except => [:callback]
  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = ENV['LINE_CHANNEL_SECRET']
      config.channel_token = ENV['LINE_CHANNEL_TOKEN']
    end
  end

  def callback
    page = Page.order(updated_at: :desc).limit(1).pluck(:participant)
    limit_tasks = Task.where(user_uid: current_user.uid, page_id: page).where(updated_at: Time.now - 10.minutes...Time.now)
    body = request.body.read

    signature = request.env['HTTP_X_LINE_SIGNATURE']
    unless client.validate_signature(body, signature)
      head :bad_request
    end

    events = client.parse_events_from(body)

    events.each { |event|

      if event.message['text'].include?("分担表")
        response = @tasks.name
      end

      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: 'text',
            text: response
          }
          client.reply_message(t.user_uid,event['replyToken'], message)
        end
      end
    }

    head :ok
  end
end
