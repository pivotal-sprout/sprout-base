require 'rake'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'

desc 'Run foodcritic && rubocop && spec:unit'
task default: %w[foodcritic rubocop spec:unit]

desc 'Run default && spec:integration'
task ci: %w[default spec:integration]

desc 'Run foodcritic'
task :foodcritic do
  sh 'foodcritic . -f any'
end

RuboCop::RakeTask.new

namespace :spec do
  desc 'Run unit specs (ChefSpec)'
  task :unit do
    sh 'rspec spec/unit'
  end

  desc 'Run integration specs (Will actually execute recipe!)'
  task :integration do
    sh 'rspec spec/integration'
  end
end
