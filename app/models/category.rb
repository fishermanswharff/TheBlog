class Category < ActiveRecord::Base
  belongs_to :article
  validates :label, presence: true
end