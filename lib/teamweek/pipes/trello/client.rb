module Teamweek
  module Pipes
    module Trello
      class Client
        attr_reader :raw_client
        attr_reader :scope_id

        def initialize(raw_client, scope_id = nil)
          @raw_client = raw_client
          @scope_id = scope_id
        end

        def boards
          authorized_get("/members/me/boards")
        end

        def lists
          authorized_get("/boards/#{scope_id}/lists")
        end

        def cards
          authorized_get("/lists/#{scope_id}/cards")
        end

        private

        def authorized_get(uri)
          raw_client.get(
            full_path("#{uri}?key=#{Trello.key}&token=#{raw_client.token}"),
            perform_caching: false
          )
        end

        def full_path(uri)
          base_uri + uri
        end

        def base_uri
          "https://api.trello.com/1"
        end

      end
    end
  end
end
