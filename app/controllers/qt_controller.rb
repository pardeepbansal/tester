class QtController < ApplicationController

	def save_and_next



		if params[:commit] == "Save And New"
		  @test = Test.find(params[:question][:test_id])
	      @question = Question.new(question_params)
	      @question.tests  << @test

		      if @question.save 
		      	   	redirect_to newquestion_url(@test.id) ,notice: "Sucessfully added the question"
		      else
		      		render 'new_question'
		      end


		end




			#if value is only create question
		    if params[:commit] == "Create Question"
		      @test = Test.find(params[:question][:test_id])
		      @question = @test.questions.new(question_params)
		      @question.tests  << @test
		            if @question.save
		              redirect_to test_url(@test) , notice: "Sucessfully added the question"
		            else
		              render 'new_question'
		            end
		    end

	end


	def new
		@question = Question.new
	      		@test = Test.find(params[:test_id])
	      		@question = @test.questions.build
	      	render 'new_question'
	end


	private
		def question_params
      		params.require(:question).permit(:title, :a, :b, :c, :d, :e, :answer)
    	end
end
