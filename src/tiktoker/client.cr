require "./client/*"

module Tiktoker
  module Client
    class_getter portal_client = Client::PortalClient.new

    def self.find_user(username : String) : Tiktok::InitialProps
      portal_client.find_user(username: username)
    end
  end
end