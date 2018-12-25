
module RpgAttribute
    attr_accessor :hp, :mhp, :mp, :mmp, :atk, :spd
    def init_attr()
        raise RuntimeError, "init_attr() not implement"
    end
end

class RpgEntity
    include RpgAttribute
    attr_reader :name

    def initialize(name)
        @name = name
        init_attr()
    end

    def init_attr()
        @hp = 10
    end

    def ^(that)
        @name + that.name
    end
end

r = RpgEntity.new("Penut")
# puts r.i
puts r.hp