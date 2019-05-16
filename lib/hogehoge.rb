require_relative 'hogehoge/notify'
require 'line-notify-client'
require 'slack/incoming/webhooks'
# execute scripts
notify = Notify.new
notify.slack_post("aa")