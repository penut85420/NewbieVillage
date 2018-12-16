arr = Array.new

# Get user input
s = gets
while s != "END\n"
    arr.append(s[0...-1])
    s = gets
end

# Generate table
print("<table>\n")
for i in 0...arr.length
    print "<tr><td>%d</td><td>%s</td></tr>\n" % [i, arr[i]]
end
print("</table>\n")