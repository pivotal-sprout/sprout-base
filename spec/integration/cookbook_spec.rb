# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'sprout-base' do
  before :all do
    expect(system('soloist')).to eq(true)
  end

  it 'creates /var/chef/cache' do
    expect(Dir.exist?('/var/chef/cache')).to eq(true)
  end
end
