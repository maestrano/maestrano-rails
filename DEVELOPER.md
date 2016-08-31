## Run tests
```bash
cd test/dummy_activerecord
rake db:migrate
cd ../..
rake
```

## Release gem

Release the gem using jeweler

``` bash
gem install jeweler
bundle exec rake version:bump:patch
bundle exec rake gemspec:release
bundle exec rake release
```
