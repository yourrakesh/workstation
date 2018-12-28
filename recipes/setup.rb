package 'tree' do
 action :install
end 

package 'nano'
package 'emacs'

package 'ntp' do
 action :install
end

file '/etc/motd' do
 content 'This server is the property of Rakesh. Added one more content'
 action :create
 owner 'root'
 group 'root'
end
