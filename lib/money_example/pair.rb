module MoneyExample
  class Pair
    attr_reader :source, :target

    def initialize(source, target)
      @source = source
      @target = target
    end

    def name
      "#{source}/#{target}"
    end
  end
end