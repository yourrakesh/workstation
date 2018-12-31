package 'tree' do
 action :install
end 

package 'nano'
package 'emacs'

package 'ntp' do
 action :install
end

file '/etc/motd' do
 content "This server (VM) is the property of Rakesh.
 HOSTNAME: #{node['hostname']}
 IPADDRESS: #{node['ipaddress']}
 CPU: #{node['cpu']['0']['mhz']}
 MEMORY: #{node['memory']['total']}

"
 action :create
 owner 'root'
 group 'root'
end
