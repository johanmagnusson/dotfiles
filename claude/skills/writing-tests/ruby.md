# Testing Ruby applications

Prefer use of RSpec for testing Ruby code.

## Libraries

Use [rspec](https://rubygems.org/gems/rspec) if the project have it already configured, otherwise use [minitest](https://rubygems.org/gems/minitest).

For database applications use [factory_bot](https://rubygems.org/gems/factory_bot) to set up test factories.

## Example

Example unit test for a database-backed application:

```ruby
# Class to test
class MyClass
  def do_something(thing)
    # Implementation details
  end
end

# RSpec testing the class
RSpec.describe MyClass do
  it "does something" do
    # Setup
    thing = create(:thing)

    # Execute
    result = described_class.new.do_something(thing)

    # Verify
    expect(result).to be_thing
  end
end
```
