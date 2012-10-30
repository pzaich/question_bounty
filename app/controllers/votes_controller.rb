class VotesController < ApplicationController

	def create
		@answer = Answer.find(params[:answer_id])
		@vote = current_user.votes.new(:answer => @answer)
		if @vote.save
			render 'create'
		else
		end
	end
end
