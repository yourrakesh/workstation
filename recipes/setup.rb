package 'tree' do
 action :install
end 

package 'nano'
package 'emacs'

package 'ntp' do
 action :install
end

file '/etc/motd' do
 content 'This server (VM) is the property of Rakesh.'
 action :create
 owner 'root'
 group 'root'
end
