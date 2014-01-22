# depends 'firewall'

bash "ufw default deny" do
  code "ufw default deny"
  action :run
end

firewall 'ufw' do
  action :enable
end

firewall_rule 'ssh' do
  port     22
  action   :allow
  notifies :enable, 'firewall[ufw]'
end

firewall_rule 'http' do
  port     80
  protocol :tcp
  action   :allow
  notifies :enable, 'firewall[ufw]'
end

firewall_rule 'https' do
  port     443
  protocol :tcp
  action   :allow
  notifies :enable, 'firewall[ufw]'
end

firewall_rule 'pop3s' do
  port     995
  protocol :tcp
  action   :allow
  notifies :enable, 'firewall[ufw]'
end

firewall_rule 'smtp' do
  port     25
  protocol :tcp
  action   :allow
  notifies :enable, 'firewall[ufw]'
end

firewall_rule 'smtps' do
  port     465
  protocol :tcp
  action   :allow
  notifies :enable, 'firewall[ufw]'
end
