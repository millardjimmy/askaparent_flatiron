class Answer < ApplicationRecord
    belongs_to :parent
    belongs_to :question
end
