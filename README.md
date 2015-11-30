# MarkovTextGenerator

Simple implementation of the probability distribution based on the current state and not on the sequence of events that is preceded it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'markov_text_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install markov_text_generator

## Usage

    model = MarkovTextGenerator.new
    
    model.train 'hello world, hello buddy, hello world'
    
    model.predict_next_word_for 'hello'
    
    #=> 'world' # Most likely

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/rlishtaba/markov_text_generator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

