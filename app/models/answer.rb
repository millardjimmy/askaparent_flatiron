class Answer < ApplicationRecord
    belongs_to :user
    belongs_to :question
    validates :answer_text, presence: true
end