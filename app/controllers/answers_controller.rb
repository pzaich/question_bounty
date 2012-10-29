class AnswersController < ApplicationController
	before_filter :authenticate_user!, :except => [:show]
	before_filter :find_question
	def new
		@answer = @question.answers.new
		3.times { @answer.arguments.build }
	end

	def create
		answer_params = params[:answer].merge({ :question_id => params[:question_id] })
		@answer = current_user.answers.new(answer_params)
		if @answer.save
			flash[:success] = "Your answers have been added to the question."
			redirect_to question_path(@question)
		else
			flash[:notice] = "Something went wrong!"
			render 'new'
		end
	end

	private
		def find_question
			@question = Question.find(params[:question_id])
		end
end
