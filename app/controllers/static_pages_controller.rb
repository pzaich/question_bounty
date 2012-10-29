class StaticPagesController < ApplicationController
	def home
		@questions = Question.limit(25)
	end
end
