# frozen_string_literal: true

actions :create
default_action :create

attribute :source, kind_of: String, name_attribute: true
attribute :variables, kind_of: Hash
attribute :cookbook, kind_of: String
