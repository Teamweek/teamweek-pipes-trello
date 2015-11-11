module Teamweek
  module Pipes
    module Trello
      class Cards < Repository

        def pull_data
          client.cards
        end

        private

        def map_data(card)
          {
            name: card['name'],
            foreign_id: card['id']
          }
        end
      end
    end
  end
end
