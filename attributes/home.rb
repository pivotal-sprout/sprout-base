# frozen_string_literal: true

include_attribute 'sprout-base::user'

node.default['sprout']['home'] = node['etc']['passwd'][node['sprout']['user']]['dir']
