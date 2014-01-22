Basic web application server
============================

## Requires

### Ruby version

2.0.0+

## Set up Deploy sever

### install vagrant plugins

<pre>
vagrant plugin install vagrant-berkshelf
vagrant plugin install vagrant-hostsupdater
</pre>

### bundle, berksself setting

<pre>
cd chef-repo
bundle install --path vendor/bundle
bundle exec berks install --path cookbooks/
</pre>

## (Only Once) install chef in remote server

<pre>
bundle exec knife solo prepare deployer@HOST -i ~/.ssh/YOUR_RSA_KEY
</pre>

## apply setting to server

<pre>
bundle exec knife solo cook deployer@HOST -i ~/.ssh/YOUR_RSA_KEY
</pre>

## Vagrant

<pre>
vagrant up
vagrant ssh-config --host dev.xxx > ./vagrant_sshconfig
bundle exec knife solo prepare -F vagrant_sshconfig dev.xxx
bundle exec knife solo cook -F vagrant_sshconfig dev.xxx
</pre>

## Special thanks

[@ruimashita](https://github.com/ruimashita)

