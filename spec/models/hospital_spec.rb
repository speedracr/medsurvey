require 'spec_helper'

describe Hospital do
  it 'has departments' do
    expect Hospital.create(department: "1").to be_valid
  end
end
