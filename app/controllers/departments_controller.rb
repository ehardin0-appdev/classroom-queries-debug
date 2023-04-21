class DepartmentsController < ApplicationController
  def index
    matching_departments = Department.all

    @list_of_departments = Department.order({ :created_at => :desc })

    render({ :template => "departments/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    @matching_departments = Department.where({ :id => the_id })

    @the_department = Department.where({ :id => the_id }).at(0)

    render({ :template => "departments/show.html.erb" })
  end
end
