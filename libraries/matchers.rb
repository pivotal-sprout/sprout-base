if defined?(ChefSpec)
  def enable_bash_it_feature(feature)
    ChefSpec::Matchers::ResourceMatcher.new(:sprout_base_bash_it_enable_feature, :create, feature)
  end

  def create_bash_it_custom_plugin(plugin)
    ChefSpec::Matchers::ResourceMatcher.new(:sprout_base_bash_it_custom_plugin, :create, plugin)
  end
end
