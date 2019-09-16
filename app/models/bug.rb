class Bug < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_one_attached :screen_shot

  validates :title, :severity, :actual_result, :expected_result, presence: true

  enum severity: %i[critical high medium low]
  enum status: %i[start in_progress ready_for_testing testing_in_progress qa_approved done] do
    event :bug_state do
      transition start: :in_progress
      transition in_progress: :ready_for_testing
      transition ready_for_testing: :testing_in_progress
      transition testing_in_progress: :qa_approved
      transition qa_approved: :done
      transition done: :start
    end
  end
end
