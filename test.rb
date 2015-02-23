# -*- coding: utf-8 -*-
require "bundler/setup"
Bundler.require

class B
  def self.f
    "xxx"
  end
end

concern :M do
  class_methods do
    self                        # => #<Module:0x007f9f0974d858>
    def f
      "ok"
    end
  end
end

class C < B
  include M
end

C.f                             # => "ok"
