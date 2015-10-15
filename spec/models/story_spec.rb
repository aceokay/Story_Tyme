require 'rails_helper'

describe Story do
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
  it { should validate_presence_of :creator }
  it { should have_many :additions }
end
