class StudentsController < ApplicationController

  def index
    if params[:name]
      
      name = params[:name][0].upcase + params[:name].slice(1, params[:name].length)
      students = Student.where(last_name: name)
      
    else
      students = Student.all
    end
    

    render json: students
  end

  def show
    render json: Student.find(params[:id])
  end


end
