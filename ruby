RUBY Basics
@bml @ruby


IRB - ruby sandbox




# ESCAPE SEQUENCES
\" – double quote
\ – single backslash
\a – bell/alert
\b – backspace
\r – carriage return
\n – newline
\s – space
\t – tab

# ARRAYS
(1..n).to_a


# ARRAY METHODS


my_array.select {|x| x>5} - selects array elements over 5


INTEGER.next
INTEGER.odd?
INTEGER.even?

STRING.capitalize
STRING.upcase
STRING.reverse
STRING.length

"#{VARIABLE} STRING" - pass an variable into a string

ARRAY.join(', ') - turns the array into a string separated by ', '
ARRAY[position] - show element in position
ARRAY.uniq - show unique elements only
ARRAY.delete_at(0)


String.include? '' - includes string
Sting.gsub!(/s/, '') - substitutes chars




for num in 1..10 - up to and including 10
for num in 1...10 - up to 10 (not inclusive)

break - quits a loop


# Iterating Hashes

my_hash = {'key1' => 'value1', 'key2' => 'value2'}

Hash.each do |key, value|


Hash.sort_by = {|a, b| b}
Array.reverse!


hash.first # => [key1, value1]
hash.first[0] # => [key1]
hash.first[1] # => [value1]


Object.is_a? Integer/Array/Hash etc...


# Method parameters
## Splat arguments - for unknown no. of arguments
method(argument1, *arguments2)

## true/false parameters
def my_method(arg1, arg2=false)
    if arg2
    else
    end
end

# return value from methods
return x

# Manipulate Strings
my_string[0] - gives you char 1
my_string[0..11] - gives you chars 1 to 11
my_string[0..-1] - give you whole string

my_string.sort! {|a,b| b <=> a} - ascending order (explicit)
my_string.sort! {|a,b| b <=> a} - descending order


# Convert Stings to Symbols
.to_sym
.intern


# New hash syntax

new_hash = {
    one: 1,
    two: 2
}

# Hash filters & iteration
my_hash.select { |k, v| v > 97}

my_hash.each_key {|k| print k}
my_hash.each_value {|v| print v}


# Ternary Operator

boolean ? 'do if true': 'do if false'


# CONDITIONAL ASSIGNMENT - Set value if not already set

variable = variable || "default value"
variable ||= "default value"


#iterate over a specific range of numbers
95.upto(100) {|i| }
.downto

# Responds To
Array.respond_to?(:METHOD)


# Next integer
.next

# Prime Numbers
require 'prime'
prime = Prime.instance
prime.first N

# Collect Method
applies a block to every element in an array
doubled_array = my_array.collect {|x| x*2}

# Yield - input block into method

def my_method
    yield
end

my_method {block}

# Yield w/ Parameters

def my_method(param)
  yield param
end

my_method("Parameter") { |param| block }


# Now call the method with your name!

yield_name("Alain") { |name| puts "My name is #{name}." }


# PROCS

my_proc = Proc.new {|n| ...}

my_array.select(&my_proc)
my_proc.call


## In Situ Proc
my_array.collect(&:to_i)

# LAMBDAS - if you have a return in a lambda, it will kick you back to the method, while a proc will send the return through and kick you out of the containing method

my_lambda = lambda {|x| ...}

# CLASS
class My_class
    def initialize(x,y)
        @x = x
        @y = y
    end

    def My_class.class_method
        'this makes class method accessible to the whole class, not just one instance of it'
    end
end

My_class.new(x, y)

## Class Inheritance

class SubClass < ParentClass
end

- can override methods from super class by making new method with same name
- can access super class method even if overwritten by using: super('method or attribute')


# VARIABLES

$   global variable
@   instance variable
@@  class variable



## Making Class variable accessible

- for read access:

attr_reader :my_var1, :my_var2

- for write access:

attr_writer :my_var1, :my_var2

- or, for read/write access:

attr_accessor :my_var1, :my_var2


# MODULES

module MyModule

    def MyModule.method
    end

    def self.method
2cli    end

    CONSTANT == ...

end

MyModule::CONSTANT

-REQUIRE: access in pre-defined modules using: require MyModule

-INCORPORATE: (no longer need to call Module::CONSTANT, can just access methods and constants directly) a pre-defined module using: include MyModule

if incorporated into class can be accessed from instances only!

jack = Man.new
jack.method

-EXTEND: mixes a module's methods at the class level: extend MyModule

Man.method






