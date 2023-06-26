class User < ApplicationRecord

  has_many :assigned_logs, class_name: 'Log', foreign_key: :runner_id
  has_many :created_logs, class_name: 'Log', foreign_key: :assigner_id
  has_many :tasks, through: :assigned_logs

end
