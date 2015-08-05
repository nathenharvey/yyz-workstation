package 'vim' do
  action :install
end

package 'emacs' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

file '/etc/motd' do
  content "This server is property of Chef

  IPADDRESS:  #{node["ipaddress"]}
  HOSTNAME:   #{node["hostname"]}
  MEMORY:     #{node["memory"]["total"]}
  CPU:        #{node["cpu"]["0"]["mhz"]}
"
  manage_symlink_source true
end






