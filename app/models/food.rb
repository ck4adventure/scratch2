# == Schema Information
#
# Table name: foods
#
#  id          :bigint           not null, primary key
#  category    :integer          default("other")
#  description :text
#  image       :string           default("https://raw.githubusercontent.com/do-community/react_rails_recipe/master/app/assets/images/Sammy_Meal.jpg")
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_foods_on_category  (category)
#  index_foods_on_name      (name) UNIQUE
#
class Food < ApplicationRecord
  enum category: {
    appetizers: 1,
    breads: 2,
    breakfast: 3,
    drinks: 4,
    mains: 5,
    sauces: 6,
    sides: 7,
    soups: 8,
    sweets: 9,
    pantry: 10,
    other: 99,
  }
  validates :name, presence: true, uniqueness: true
  validates :category, presence: true
end
