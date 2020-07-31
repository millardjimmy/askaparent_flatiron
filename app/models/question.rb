class Question < ApplicationRecord
    belongs_to :users
    has_many :answers
    has_many :users, through: :answers

    validates :question_text, :presence => true
end