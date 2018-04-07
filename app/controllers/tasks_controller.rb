class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(params.require(:task).permit(:title, :due_at, :category_id, :addition_info))
    p @task.due_at
    # @task.due_at = DateTime.parse(@task.due_at)
    # case @task[:category_id]
    #   when 1
    #     @task[:addition_info] = Shopping.new(params.require(:shopping).permit(:store_name, :list, :expected_expense))
    #   when 2
    #     p "enter case statement"
    #     donation_params = params.fetch(:donation).permit(:vehicle_size, :address, :receipt_needed?)
    #     @task.update_attribute(:addition_info, donation_params.as_json)
    #     p @task
    #   when 3
    #     @task[:addition_info] = HouseCleaning.new(params.require(:house_cleaning).permit(:address, :num_of_bathrooms, :type_of_cleaning))
    #   when 4
    #     @task[:addition_info] = Moving.new(params.require(:moving).permit(:num_of_people, :address))
    #   when 5
    #     @task[:addition_info] = Other.new(params.require(:other).permit(
    #       :title, :description))
    #   end
    if @task.save
      flash[:notice] = "Task has been created."
      render 'tasks/show'
    else
      render json: @task.errors.full_messages
    end
  end
  
  def show
    @task = Task.find(params[:id])
  end
end