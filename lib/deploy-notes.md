deploying:

1. ssh to internwriter.net server
1. `cd /srv/www/joint-budget`
1. `git pull`
1. `bin/rake bundle install`
1. `bin/rake db:migrate RAILS_ENV=production`
1. `RAILS_ENV=production bin/rake assets:precompile`
1. `service nginx restart`

viewing logs:

`tail -F /var/log/nginx/error.log`
