class StaticPagesController < ApplicationController
	def home
		@questions = Question.limit(25)
    @menu = 'feed'
	end
end
