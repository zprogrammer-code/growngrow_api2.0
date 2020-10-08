class Item < ApplicationRecord
  require 'rails_helper'
  
  belongs_to :todo
  # app/models/item.rb
  
  # model association
  # validation
  validates_presence_of :name
  # spec/models/item_spec.rb

# Test suite for the Item model
RSpec.describe Item, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:todo) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:name) }
end
end
