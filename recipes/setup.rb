package 'emacs' do
  action :install
end 

package 'ntp' do
  action :install
end

service 'ntpd' do
  action [ :enable, :start ]
end

package 'tree' do
  action :install
end

file '/etc/motd' do
  content 'This server is the property of Tom Gorman'
  action :create
  owner 'root'
  group 'root'
end

package 'git' do
  action :install
end
