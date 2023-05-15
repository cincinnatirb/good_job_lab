class BruteForceStrategy
  attr_accessor :iterations

  def initialize(iterations: 10)
    @iterations = iterations
  end

  def results
    @results ||= calculate!
  end

  def calculate!
    points_in_circle = 0
    total_points = 0

    iterations.times do
      x = rand(-1.0..1.0)
      y = rand(-1.0..1.0)

      points_in_circle += 1 if Math.sqrt(x**2 + y**2) <= 1
      total_points += 1
    end

    pi = 4.0 * (points_in_circle.to_f / total_points)

    {
      pi: pi,
      accuracy: 100.0 - ((pi - Math::PI).abs / Math::PI * 100.0).round(4)
    }
  end
end
