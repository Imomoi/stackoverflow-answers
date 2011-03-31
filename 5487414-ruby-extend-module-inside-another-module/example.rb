module Foo
  module Bar
    def speak
      puts "hey there"
    end
  end
  module Baz
    extend Foo::Bar

    def self.included(base)
      base.send :extend, Foo::Bar
    end

    def welcome
      puts "welcome, this is an instance method"
    end
  end
end

class Talker
  include Foo::Baz
end

Talker.new.welcome
Talker.speak

