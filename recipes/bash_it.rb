# frozen_string_literal: true

bash_it_version = node['versions']['bash_it']

git "#{Chef::Config[:file_cache_path]}/bash_it" do
  repository node['bash_it']['repository']
  revision bash_it_version
  destination "#{Chef::Config[:file_cache_path]}/bash_it"
  action :sync
end

directory node['bash_it']['dir'] do
  owner node['sprout']['user']
  mode '0777'
end

execute "Copying bash-it's .git to #{node['bash_it']['dir']}" do
  command "rsync -axSH #{Chef::Config[:file_cache_path]}/bash_it/ #{node['bash_it']['dir']}"
  user node['sprout']['user']
end

template node['bash_it']['bashrc_path'] do
  source 'bash_it/bashrc.erb'
  cookbook 'sprout-base'
  owner node['sprout']['user']
  mode '0777'
end

node['bash_it']['enabled_plugins'].each do |feature_type, features|
  features.each do |feature_name|
    sprout_base_bash_it_enable_feature "#{feature_type}/#{feature_name}"
  end
end

node['bash_it']['custom_plugins'].each do |cookbook_name, custom_plugins|
  custom_plugins.each do |custom_plugin|
    sprout_base_bash_it_custom_plugin custom_plugin do
      cookbook cookbook_name
    end
  end
end
