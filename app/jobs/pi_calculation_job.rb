class PiCalculationJob < ApplicationJob
  def perform(strategy_classname:, iterations: 10)
    strategy = "#{strategy_classname.camelcase}Strategy".safe_constantize.new(iterations: iterations)
    puts "results: #{strategy.results.inspect}"
  end
end
