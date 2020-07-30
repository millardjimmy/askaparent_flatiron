class Question < ApplicationRecord
    belongs_to :parent
    has_many :answers
    has_many :parents, through :answers
end
