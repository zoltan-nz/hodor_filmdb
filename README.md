== Install

    git clone git@github.com:szines/hodor_filmdb.git
    cd hodor_filmdb
    bundle install
    rake db:create

Migration and sample data from seed file:

    rake db:reset
    rails s
