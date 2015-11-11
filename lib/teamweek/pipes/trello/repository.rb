module Teamweek
  module Pipes
    module Trello
      class Repository
        attr_reader :client

        def initialize(options)
          @client = build_client(options)
        end

        def pull_data
          fail NotImplementedError
        end

        def map_data
          fail NotImplementedError
        end

        def pull
           pull_data.map { |item| map_data(item) }
        end

        private

        def build_client(options)
          Client.new(
            options[:http_client],
            options[:foreign_workspace_id]
          )
        end
      end
    end
  end
end
