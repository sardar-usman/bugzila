class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: %i[admin manager developer sqa]

  has_many :created_projects, class_name: 'Project', foreign_key: 'manager_id'
  has_many :project_users
  has_many :projects, through: :project_users
  has_many :bugs
  has_one_attached :avatar
end
