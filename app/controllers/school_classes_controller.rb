class SchoolClassesController < ApplicationController
  def show
    find_school_class
  end

  def index
    @school_classs = school_class.all
  end

  def create
    @school_class = school_class.new(school_class_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def update
    @school_class = find_school_class
    @school_class.update(school_class_params)
    redirect_to school_class_path(@school_class)
  end

  def edit
  end

  private

  def find_school_class
    @school_class = school_class.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:title, :room_number)
  end
end
