require 'httparty'

module GitHubExplorer
 class Client
   include HTTParty
   base_uri 'https://api.github.com'

   def initialize(token)
     @options = { header: {"Authorization" => "token #{token}", "User-Agent" => "RubyExplorer"}}
   end

   def fetch_user(username)
     response = self.class.get("/users/#{username}", @options)

     case response.code
     when 200 then User.new(JSON.parse(response.body))
     when 404 then nil
     else raise "Api Errors: #{response.code}"
     end
    rescue SocketError
      puts "Check your internet connection"
      exit
   end
 end
end
