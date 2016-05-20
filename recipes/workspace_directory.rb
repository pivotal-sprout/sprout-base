directory "#{node['sprout']['home']}/#{node['workspace_directory']}" do
  owner node['sprout']['user']
  mode '0755'
  action :create
end
