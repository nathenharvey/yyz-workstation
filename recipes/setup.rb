package 'vim' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "This server is property of Chef\n"
  manage_symlink_source true
end

