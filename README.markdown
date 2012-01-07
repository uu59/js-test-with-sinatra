# What's this?

This is a toolbox for testing JavaScript with capybara-webkit (or, potentially, it can use `selenium`).

# How to use?

1. put your HTML-fragment to `views/any_test.str`
2. put your spec to `spec/any_test_spec.rb` with `visit /any_test`
3. run `rspec`

You can see sample files at `views/it-works.str` and `spec/health_check_spec.rb`.

