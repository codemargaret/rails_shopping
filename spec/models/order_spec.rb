require 'rails_helper'

# describe Order, 'validation' do
#   it { should validate_presence_of :status }
#   it { should validate_presence_of :account_id }
#   it { should validate_presence_of :total_price }
# end

describe Order, 'association' do
  # it { should belong_to :user }
  it { should have_many :order_items }
end

describe Order, 'column_specification' do
  it { should have_db_column(:status).of_type(:string) }
  it { should have_db_column(:account_id).of_type(:integer) }
  it { should have_db_column(:total_price).of_type(:decimal) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
