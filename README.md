# Practice - Ruby on Rails - Bookstore App

Windows based, May 2019

### Using a Custom Setter Method for a Model

The genre attribute has whitespace removed and is changed to be downcase.

```ruby
class BookGenre < ApplicationRecord
  def genre=(value)
    result = value.strip.downcase
    super(result)
  end
end
```