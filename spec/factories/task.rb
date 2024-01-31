# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    title { 'My Task Title' }
    description { 'Task Description' }
    due_date { 3.days.from_now }
    priority { 1 }
    status { 'to_do' }
    association :user
  end
end
