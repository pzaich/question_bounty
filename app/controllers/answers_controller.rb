class AnswersController < ApplicationController
	before_filter :authenticate_user!, :except => [:show]

	def new
		@question = Question.find(params[:question_id])
		@answer = @question.answers.new
		3.times { @answer.arguments.build }
	end

	def create
		answer_params = params[:answer].merge({ :question_id => params[:question_id] })
		@answer = current_user.answers.new(answer_params)
		if @answer.save
			flash[:success] = "Your answers have been added to the question."
			redirect_to question_path(params[:question_id])
		else
			flash[:notice] = "Something went wrong!"
			redirect_to new_question_answer_path(params[:question_id])
		end
	end

end
