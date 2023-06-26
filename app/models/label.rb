class Label < ApplicationRecord

  has_many :task_labels
  has_many :taks, through: :task_labels

end
