require 'rails_helper'

describe Image do
  it { should validate_presence_of :name }
  it { should have_many :additions }
end
