class EmployeesController < ApplicationController
    before_action :set_employee, only: [:show, :edit, :update, :email]

  def index
    @employees = Employee.all
   end
   
   def new
    @employee = Employee.new
   end

   def show
    @employee = Employee.find(params[:id])
   end
  def email
    # @employee = Employee.find(params[:id])
    Employee.first.destroy
    ConfirmationMailer.confirmation_email(@name, @message).deliver
    # render nothing: true, status: 200
  end
  
  def create
    
    @employee = Employee.new(employee_params)
    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Review before sending an email.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Review before sending an email.' }
      else
        format.html { render :edit }
      end
    end
  end
  
  # def destroy
  #    @employee = employee.find(params[:id])
  #   @employee.destroy
  #   respond_to do |format|
  #     format.html { redirect_to root_path, notice: 'employee was successfully deleted.' }
  #   end
  # end

  
private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:first_name, :last_name, :email, :shift_start_time, :hours_worked, :employee_id, :title, :date)
    end
end


