class PiChannel < ActionCable::Channel::Base
  extend Turbo::Streams::Broadcasts, Turbo::Streams::StreamName
  include Turbo::Streams::StreamName::ClassMethods

  def subscribed
    PiCalculationJob.perform_later(strategy_classname: "brute_force")
    stream_from "pi"
  end
end
