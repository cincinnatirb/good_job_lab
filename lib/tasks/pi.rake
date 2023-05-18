#!/usr/bin/env ruby

namespace :pi do
  desc "Calculate pi using brute force and 100000000 iterations"
  task calc: :environment do
    PiCalculationJob.perform_later(strategy_classname: "brute_force", iterations: 100000000)
  end
end
