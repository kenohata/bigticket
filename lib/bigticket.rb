require 'bigticket/version'

module Bigticket
  module Rails
    class Engine < ::Rails::Engine
      initializer "", group: :all do |app|
        app.config.assets.precompile += %w( bigticket/*.sass )
      end
    end
  end
end
