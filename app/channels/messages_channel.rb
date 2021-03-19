
class MessagesChannel < ApplicationCable::Channel
  include ::NewRelic::Agent::Instrumentation::ControllerInstrumentation
  def subscribed
      stream_from 'messages'
  end
  add_transaction_tracer :subscribed, :category => :task
end  
