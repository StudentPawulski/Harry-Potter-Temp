# frozen_string_literal: true

class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end
  # automagically load the app/views/students/show.html.erb
  # and hand off the @student value
end
