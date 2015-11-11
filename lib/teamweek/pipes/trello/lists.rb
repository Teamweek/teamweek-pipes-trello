module Teamweek
  module Pipes
    module Trello
      class Lists < Repository

        def pull_data
          client.lists
        end

        private

        def map_data(list)
          {
            name: list['name'],
            foreign_id: list['id']
          }
        end
      end
    end
  end
end
