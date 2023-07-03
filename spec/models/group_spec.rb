require 'rails_helper'

RSpec.describe Group, type: :model do
  before(:each) do
    @user = User.new(name: 'Admin', email: 'admin@gmail.com', password: 'password',
                     password_confirmation: 'password')

    @user.save

    @group = Group.new(name: 'First Group')

    @group.save

    @expense = Expense.new(name: 'First Expense', amount: 100)

    @expense.save

    @group.expenses << @expense
  end

  it 'should have a name' do
    @group.name
    expect(@group.name).to eq('First Group')
  end

  it 'should have expenses' do
    @group.expenses
    expect(@group.expenses).to eq([@expense])
  end
end
