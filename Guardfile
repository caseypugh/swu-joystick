# Compile our .scss into vanilla .css
guard 'sass', :input => 'public/assets/css', :style => :compact

# Run unicorn server for us automatically
# Hard-coded to port 4000 so all devs use "caseydev.pokkari.net:4000" as URL
# guard 'unicorn', :port => 4000, :daemonize => true, :config_file => 'unicorn.rb', :pid_file => 'tmp/unicorn.pid'
guard 'unicorn', :port => 4000, :daemonize => false, :config_file => 'unicorn.rb', :pid_file => 'tmp/unicorn.pid'