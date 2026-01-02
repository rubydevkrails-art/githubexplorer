module GitHubExplorer
  class User
    attr_reader :login, :name, :bio, :followers, :public_repos
    def initialize(attributes)
      @login = attributes['login']
      @name = attributes['name']
      @bio = attributes['bio']
      @followers = attributes['followers']
      @public_repos = attributes['public_repos']
    end

    def profile_summary
      <<~SUMMARY
        Username : #{@login}
        FullName : #{@name}
        Bio: #{@bio}
        Status: #{@followers} followers || #{@public_repos} repos
      SUMMARY
    end
  end
end
