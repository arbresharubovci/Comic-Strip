# == Schema Information
#
# Table name: comics
#
#  id             :integer          not null, primary key
#  caption        :string
#  comments_count :string
#  likes_count    :string
#  photo          :string
#  shares_count   :integer
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  owner_id       :integer
#
class Comic < ApplicationRecord
  
  mount_uploader :photo, PhotoUploader
  
   belongs_to(:user, { :class_name => "User", :foreign_key => "owner_id", :counter_cache => true })
  
   has_many(:shares, { :class_name => "Share", :foreign_key => "comic_id", :dependent => :destroy })

   
end
