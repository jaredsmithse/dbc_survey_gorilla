class Response < ActiveRecord::Base
  belongs_to :user
  belongs_to :choice

  validates_uniqueness_of :user_id, :scope => :choice_id
end
