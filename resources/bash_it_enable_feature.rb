# frozen_string_literal: true

actions :create
default_action :create

attribute :name, kind_of: String, name_attribute: true
attribute :type, kind_of: String
