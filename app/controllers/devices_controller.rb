class DevicesController < ApplicationController

  #Authenticate
  http_basic_authenticate_with name: "Seamus", password: "seamus101",
  except: [:index, :show ]

  def create
    @employee = Employee.find(params[:employee_id])
    @device = @employee.devices.create(device_params)
    redirect_to employee_path(@employee)
  end

  def destroy
    @employee = Employee.find(params[:employee_id])
    @device = @employee.devices.find(params[:id])
    @device.destroy
    redirect_to employee_path(@employee)
  end

  private
    def device_params
      params.require(:device).permit(:name, :mac)
    end
end
