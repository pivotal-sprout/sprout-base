require 'spec_helper'

RSpec.describe 'sprout-base' do
  it 'runs successfully' do
    expect(system('soloist')).to eq(true)
  end
end
