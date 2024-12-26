```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value.dup # Return a copy to prevent unintended modification
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20 # This no longer affects the original object's state
puts my_object.value # Output: 10
```