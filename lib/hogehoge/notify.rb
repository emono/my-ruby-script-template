class Notify
  attr_reader :slack_webhook
  def initialize
    @slack_webhook = Slack::Incoming::Webhooks.new(ENV['SLACK_WEBHOOK_URL'])
  end

  def line_post
    Line::Notify::Client.message(message: message_text)
  end

  def slack_post(message_text)
    message = "```#{message_text}```"
    slack_webhook.post(message)
  end

  private
end