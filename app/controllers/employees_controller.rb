class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def create
    @employee = Employee.new(params.require(:employee).permit(:first_name, :last_name, :date_of_birth))

    if @employee.save
      redirect_to @employee
    else
      render 'new'
    end
  end

  def new
    @employee = Employee.new
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def update
  end

  def destroy
  end

end
