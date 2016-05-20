include_recipe 'sprout-base::user_owns_usr_local'

addloginitem_path = '/usr/local/bin/addloginitem'

unless File.exist?(addloginitem_path)

  remote_file addloginitem_path do
    source 'https://github.com/downloads/pivotalexperimental/addLoginItem/addLoginItem'
    mode '0755'
    owner node['sprout']['user']
  end

  ruby_block 'test to see if addloginitem was installed' do
    block do
      raise "#{addloginitem_path} was not installed" unless File.exist?(addloginitem_path)
    end
  end

end
