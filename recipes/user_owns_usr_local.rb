directory "/usr/local/bin" do
  owner node['sprout']['user']
  recursive true
end

execute "your current user owns /usr/local" do
  command "chown -R #{node['sprout']['user']} /usr/local"
end
