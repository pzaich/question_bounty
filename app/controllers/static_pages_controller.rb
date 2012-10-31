class StaticPagesController < ApplicationController
	before_filter :authenticate_user!

	def home
		@questions = Question.limit(25)
    @menu = 'feed'
	end
end
