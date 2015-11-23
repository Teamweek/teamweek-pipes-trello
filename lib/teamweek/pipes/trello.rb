require 'teamweek/pipes/trello/repository'
require 'teamweek/pipes/trello/boards'
require 'teamweek/pipes/trello/cards'
require 'teamweek/pipes/trello/lists'
require 'teamweek/pipes/trello/client'
require "teamweek/pipes/trello/version"
require 'teamweek-pipes'

module Teamweek
  module Pipes
    module Trello
      class << self
        attr_accessor :key
      end

      Pipes.define :trello, Flows::Pull do |source|
        source.name 'Trello'
        source.description '...'

        source.pipe :none, :boards, -> options { Boards.new(options).pull }
        source.pipe :none, :lists, -> options { Lists.new(options).pull }
        source.pipe :tasks, :cards, -> options { Cards.new(options).pull }
        source.pipe :none, :cards, -> options { Cards.new(options).pull }
      end
    end
  end
end
