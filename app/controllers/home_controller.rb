require './lib/twitter_reader'

class HomeController < ApplicationController
	def index

		@tweets = Tweet.all

		# queue up next read
		Resque.enqueue(TwitterReader)
	end
end
