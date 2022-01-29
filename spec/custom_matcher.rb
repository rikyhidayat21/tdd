module CustomMatcher
  class OurCustomMatcher

  end

  def self.custom_matcher
    OurCustomMatcher.new
  end
end