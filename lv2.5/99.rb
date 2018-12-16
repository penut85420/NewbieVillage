# Get n from input
n = gets.to_i

# Print header
print "   | %4d" % [1]
for i in 2..n
    print ",%4d" % i
end
print "\n"

# Print vertical line
for i in 0..n
    print "-----"
end
print "\n"

# Print table
for i in 1..n
    print "%2d | %4d" % [i, i]
    for j in 2..n
        print ",%4d" % (i * j)
    end
    print "\n"
end