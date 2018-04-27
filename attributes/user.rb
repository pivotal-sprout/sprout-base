# frozen_string_literal: true

node.default['sprout']['user'] = ENV['SUDO_USER'] || ENV['USER']
