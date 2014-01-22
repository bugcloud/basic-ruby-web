%w(/home/www /home/www/log /home/www/default).each do |dir|
  directory "#{dir}" do
    mode 00644
    owner "deployer"
    group "deployer"
    action :create
  end
end

file "/home/www/default/index.html" do
  content "hi, This is vagrant"
  owner "deployer"
  group "deployer"
  mode 00644
end

%w(default block).each do |domain|

  template "/etc/nginx/sites-available/#{domain}" do
    source "nginx/#{domain}"
  end

  nginx_site domain do
    enable true
  end

end

