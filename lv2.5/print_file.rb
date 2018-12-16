# Init argument
output_path = nil

if ARGV.length < 1
    # Get file input path from user
    print "What file you want to print?\n> "
    file_path = gets
elsif
    # Parsing arguments
    i = 0
    while i < ARGV.length
        if ARGV[i] == "--saveto"
            output_path = ARGV[i + 1]
            i += 1
        elsif
            file_path = ARGV[i]
        end
        i += 1
    end
end

# Just redirect stdout to file if file output path is assigned
if output_path != nil
    $stdout.reopen(output_path, "w")
end

# Begin print
File.open(file_path, "r") do |fin|
    for i in 0..10
        print fin.readline
    end
end