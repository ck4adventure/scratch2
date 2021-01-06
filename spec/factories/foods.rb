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
FactoryBot.define do
  factory :food do
    name { Faker::Food.dish }
    description { Faker::Food.description }
    
    
    trait :appetizers do
      category { :appetizers }
    end

    trait :breads do
      category { :breads }
    end
    
    trait :breakfast do
      category { :breakfast }
    end

    trait :drinks do
      category { :drinks }
    end
  end
end
