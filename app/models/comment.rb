class Comment < ApplicationRecord
    validates_presence_of :content
    belongs_to :project
    belongs_to :user
end
