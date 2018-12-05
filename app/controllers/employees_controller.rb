class EmployeesController < ApplicationController




private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :email)
    end
end
