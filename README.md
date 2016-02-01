# SentenceDance
SentenceDance is a tool to train your grammar sense.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sentence_dance'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sentence_dance

## Usage

```ruby
question = SentenceDance.question

# SentenceDance::Question is a class that extends the array, sentence to 1st column, translated to 2nd column is stored.
=> ["Do as you like, do what feels right.", "好きなように振る舞いなさい。そして正しいと思えることを行いなさい。"]

quetion.sentence
=> "Do as you like, do what feels right."

question.translate
=> "好きなように振る舞いなさい。そして正しいと思えることを行いなさい。"

question.sentence.dance
# dance method will shuffle the sentence.
=> "feels do what right. like, as Do you"

question.check_answer 'Do as you like, do what feels right.'
=> true

question.check_answer 'Do you like, what as feels right.' 
=> false

```

### Dictionary
Dictionary you can add freely.  
Dictionary directory is `lib/sentence_dance/dictionaries/`.

__format__  
Dictionary format is YAML.

```
---
- - Do as you like, do what feels right.
  - 好きなように振る舞いなさい。そして正しいと思えることを行いなさい。
- - I have a question for you.
  - 質問があります。
- - Can everybody be quiet?
  - 静かにしなさい。
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sentence_dance. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

