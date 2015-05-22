module Enumerable

  def mysum
    return self.inject(0){|accum, i| accum + i }
  end

  def mean
    return self.mysum / self.length.to_f
  end

  def sample_variance
    m = self.mean
    sum = self.inject(0){|accum, i| accum + (i - m) ** 2 }
    return sum / (self.length - 1).to_f
  end

  def standard_deviation
    return Math.sqrt(self.sample_variance)
  end
end