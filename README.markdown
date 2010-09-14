DON'T USE THIS GEM!

The rspec-rails project now supports 'integration' testing with Capybara so this gem is no longer necessary. To use it, include both capybara and rspec-rails in your Gemfile, then move all your integration specs to `spec/requests` and you should be good to go.
