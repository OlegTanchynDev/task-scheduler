# frozen_string_literal: true

class TasksController < BaseController
  def index
    if params[:search].present?
      search_query = "%#{params[:search]}%"
      statuses = Task.statuses.select { |key, _value| key.include?(params[:search]) }.values
      @pagy, @tasks = pagy(Task.where('title ILIKE ? OR description ILIKE ? OR due_date::text ILIKE ? OR status IN (?)',
                                      search_query, search_query, search_query, statuses))
    else
      @pagy, @tasks = pagy(Task.all, items: 5)
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      TaskMailer.task_reminder(current_user, @task).deliver_later
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.'
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :due_date, :priority, :status)
  end
end
