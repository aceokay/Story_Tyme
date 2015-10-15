require 'rails_helper'

describe Addition do
  it { should validate_presence_of :body }
  it { should validate_presence_of :author }
  it { should belong_to :image }
  it { should belong_to :story }
end
