class EmployeesController < ApplicationController

    def create
        @employee = Employee.new(employee_params)
        @employee.save!
        @company = @employee.company
        redirect_to @company
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        @company = @employee.company
        redirect_to @company
    end

private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email, :company_id, :area_id)
    end
end
