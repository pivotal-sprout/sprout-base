actions :create

attribute :source, kind_of: String, name_attribute: true
attribute :variables, kind_of: Hash
attribute :cookbook, kind_of: String

def initialize(name, run_context = nil)
  super
  @action = :create
end
