class PiCalculationJob < ApplicationJob
  def perform(strategy_classname:, iterations: 10)
    strategy = "#{strategy_classname.camelcase}Strategy".safe_constantize.new(iterations: iterations)
    puts "results: #{strategy.results.inspect}"
    Turbo::StreamsChannel.broadcast_stream_to(
      "pi",
      content: ApplicationController.render(:turbo_stream, partial: "pi_digits/results", locals: { results: strategy.results })
    )
  end
end
