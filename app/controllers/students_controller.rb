class StudentsController < ApplicationController
  def show

  end

  def index
  end

  def create
  end

  def update
  end

  def edit
  end

  private

  def find_student
    @student = Student.find(params[:id])
  end
end
