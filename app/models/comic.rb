# == Schema Information
#
# Table name: comics
#
#  id             :integer          not null, primary key
#  caption        :string
#  comic          :string
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
end
