use_inline_resources # see http://www.foodcritic.io/#FC017

action :create do
  script_name = ::File.basename(new_resource.source)
  bash_it_custom_dir = ::File.join(node['bash_it']['dir'], 'custom')

  template ::File.expand_path(script_name, bash_it_custom_dir) do
    source new_resource.source
    owner node['sprout']['user']
    variables new_resource.variables
    only_if { script_name =~ /\.bash$/ && ::File.directory?(bash_it_custom_dir) }
    cookbook new_resource.cookbook
  end
end
