class StaticPagesController < ApplicationController
  def home
    @message = Message.new
    @messages = Message.all.order("created_at DESC")
    Pusher.trigger('my-channel', 'my-event', {:message => 'hello world'})
  end
end
