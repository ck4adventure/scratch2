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
require 'rails_helper'

RSpec.describe Food, type: :model do
  describe "db model and properties" do
    describe "db columns" do 
      it { should have_db_column(:name) }
      it { should have_db_column(:description) }
      it { should have_db_column(:category) }
    end
    
    describe 'model indexes' do
      it { should have_db_index(:name).unique }
      it { should have_db_index(:category) }
    end

    describe 'model validations' do 
      let(:subject) { build(:food) }
      it { should validate_presence_of(:name) }
      it { should validate_uniqueness_of(:name) }
      it { should define_enum_for(:category) }
    end
  end
end
