# frozen_string_literal: true

require 'unit/spec_helper'

RSpec.describe 'sprout-base::default' do
  let(:runner) { ChefSpec::SoloRunner.new }

  it 'includes the var_chef_cache recipe' do
    runner.converge(described_recipe)
    expect(runner).to include_recipe('sprout-base::var_chef_cache')
  end
end
