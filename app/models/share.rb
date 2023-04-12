# == Schema Information
#
# Table name: shares
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  comic_id   :integer
#  ower_id    :integer
#
class Share < ApplicationRecord
end
