class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions

  validates :survey_name, uniqueness: true
  validates :survey_name, presence: true
  
  before_save :generate_url

  def generate_url
    self.url = SecureRandom.base64(5)
  end

end
