module SquarePackage
  VERSION = {{ `shards version #{__DIR__}`.chomp.stringify }}

  class Square
    getter internal : String

    def initialize(@internal); end

    def line
      String.build do |s|
        s << "-"
        internal.size.times { s << "-" }
        s << "-"
      end
    end

    def to_s
      String.build do |s|
        s << line
        s << "\n"
        s << "|"
        s << @internal
        s << "|"
        s << "\n"
        s << line
      end
    end
  end
end
