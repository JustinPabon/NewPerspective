#Note: This file was generated by a scaffold.

class Part1 < ApplicationRecord
#Error check the presence of answer fields for this page.
    validates :ans1, :ans2, :ans3, :ans4, :ans5, :ans6, :ans7, :ans8, :ans9, :ans10, presence: true
end
