# lib/github_explorer.rb

# 1. Require external dependencies (Gems)
require 'httparty'
require 'json'
require 'dotenv/load'
require 'colorize' # If you added this to your Gemfile

# 2. Define the Namespace
# This prevents your 'User' class from clashing with other gems' 'User' classes.
module GitHubExplorer
  class Error < StandardError; end
  # You can define global constants here
  VERSION = "0.1.0"
end

# 3. Require your internal library files
# Using require_relative makes it easy for files within the gem to find each other.
require_relative 'github_explorer/client'
require_relative 'github_explorer/user'