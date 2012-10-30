class QuestionsController < ApplicationController
	before_filter :authenticate_user!, :except => [:index, :show]

	def show
		@question = Question.find(params[:id])
		@answers = Answer.ranked_by_vote(params[:id])
	end

	def new
		@question = Question.new
		@menu = 'bounty'
	end

	def create
		@question = current_user.questions.new(params[:question])
		if @question.save
			flash[:success] = "Question created successfully."
			redirect_to @question
		else
			flash[:error] = "Error. Please try again."
			render 'new'
		end
	end

end
