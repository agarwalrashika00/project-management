class Task < ApplicationRecord

  has_many :task_labels
  has_many :labels, through: :task_labels
  has_many :logs

  enum :state, STATUS

  def runners(state)
    User.joins(assigned_logs: :task).where('logs.state': state, 'tasks.id': id)
  end

end
