require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'is valid with valid attributes' do
    task = build(:task)
    expect(task).to be_valid
  end

  it 'belongs to a user' do
    association = described_class.reflect_on_association(:user)
    expect(association.macro).to eq :belongs_to
  end

  it 'has a valid status' do
    expect(build(:task, status: :to_do)).to be_valid
    expect(build(:task, status: :in_progress)).to be_valid
    expect(build(:task, status: :done)).to be_valid
  end
end
