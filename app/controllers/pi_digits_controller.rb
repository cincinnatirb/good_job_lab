class PiDigitsController < ApplicationController
  def index
    @strategy = BruteForceStrategy.new
  end
end
