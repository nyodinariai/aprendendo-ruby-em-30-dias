# This is a comment line
#it explains that the next line of code displays 
#a welcome message


=begin
    This is a comment line
    it explains that the next line of code displays 
    a welcome message
=end

print "Hello Ruby!" # prits the welcome message


print "Goodbye Ruby"


def multiply(val1, val2 )
    result = val1 * val2
    puts result
end

print multiply( 2, 10 )
print multiply( 4, 20 )
print multiply( 10, 40 )
print multiply( 6, 7 )

def displaystrings( *args)
    args.each{|string| puts string}
end

print displaystrings('Red')