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
  validates :title,presence: true
  has_attached_file :featured_image, :styles => { :large => "512x512", :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :featured_image, :content_type => /\Aimage\/.*\Z/
end
