class Employee < ApplicationRecord
  # an employee can have many subordinates.
  has_many :subordinates, class_name: "Employee", foreign_key: "manager_id"

  # an employee can have one manager.
  belongs_to :manager, class_name: "Employee", optional: true
end
