# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string           default(""), not null
#  body       :text             default(""), not null
#  category   :string           default("Uncategorized"), not null
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Article < ActiveRecord::Base
  
  belongs_to :user
  has_many :categories, dependent: :destroy
  has_many :comments, dependent: :destroy
  
  validates :title,presence: true
  has_attached_file :featured_image, 
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :bucket => 'dubya-blog-bucket',
                    :s3_credentials => {
                      :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
                      :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
                    }
  validates_attachment_content_type :featured_image, :content_type => /\Aimage\/.*\Z/
  
end

