class Tagging < ActiveRecord::Base
  belongs_to :tag
  belongs_to :serial
  # attr_accessible :title, :body
end
