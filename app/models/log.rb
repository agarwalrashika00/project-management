class Log < ApplicationRecord

  belongs_to :task
  belongs_to :runner, class_name: 'User'
  belongs_to :assigner, class_name: 'User'

  enum :state, STATUS

end
