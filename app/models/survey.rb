class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  accepts_nested_attributes_for :questions

  validates :survey_name, uniqueness: true
  validates :survey_name, presence: true
  
  before_save :generate_url

  def generate_url
    self.url = SecureRandom.base64(5)
  end

end
