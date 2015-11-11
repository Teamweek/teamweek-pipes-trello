module Teamweek
  module Pipes
    module Trello
      class Boards < Repository

        def pull_data
          client.boards
        end

        private

        def map_data(board)
          {
            name: board['name'],
            foreign_id: board['id']
          }
        end
      end
    end
  end
end
