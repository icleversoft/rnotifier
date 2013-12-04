require "rnotifier/version"
require 'redis'
require 'em-synchrony'

module Rnotifier
  # Your code goes here...
  class Server
    attr_accessor :redis
    def initialize
      @redis = Redis.new
    end
    def start!
      unless @redis.nil?
        @redis.psubscribe("__key*__:*") do |on|
          on.pmessage do |channel, pattern, data|
            #channel: __key*__:*
            #pattern: __keyevent@0__:expired
            #data:geo
              p "DATA--->#{data}" if pattern.match(/expired$/i)
          end
        end
      end
    end
  end
  
end
