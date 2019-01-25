class SubjectsController < ApplicationController

	def index
		@subjects = Subject.all
	end

	def show

		@subject = Subject.find(params[:id])

	end

	def new

		@subject = Subject.new 
		
	end

	def create

		Subject.create(subject_params)

		redirect_to root_path

	end

	private

	def subject_params

		params.require(:subject).permit(:name,:description,:start,:end)
		
	end
end
