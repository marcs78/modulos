module Decoratedprint
    def print text
        decoration = '#' * 100
        puts decoration
        puts text
        puts decoration
    end
end

module Legs
    include Decoratedprint

    def frontal_kick
        print 'Frontal Kick'
    end

    def side_kick
        print 'Side Kick'
    end
end

module Arms
    include Decoratedprint

    def right_jab
        print 'Right Jab'
    end

    def left_jab
        print 'Left Jab'
    end

    def hook
        print 'Hook'
    end
end

class FighterX
    include Legs
    include Arms
end

class FighterY
    include Legs
end

fighterx = FighterX.new
fighterx.frontal_kick
fighterx.right_jab

fightery = FighterY.new
fightery.side_kick
