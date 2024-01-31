# frozen_string_literal: true

class TaskMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  def task_reminder(user, task)
    @user = user
    @task = task
    mail(to: @user.email, subject: 'Reminder: Task created')
  end
end
