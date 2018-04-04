
# This script will load a text file, and write its reversed contents back to the file

InputArguments = ARGV                           #Retrieve our argument list
if(InputArguments.length <= 0)                  #Make sure theres at least one argument or fail
    abort("Need at least one argument: freverser [filename]")
end

FileName = InputArguments[0]                    #Set "FileName" to hold the first argument from the list
puts "Attempting to reverse file: " + FileName  #Let the user know whats going on!

if(!File.exist?(FileName))                  #If the file doesnt exist
    abort("Cannot find file!")                  #ABORT, ABORT! Will be errors if we dont
end

FileData = File.open(FileName, "r:UTF-8", &:read)       #Open the file and read the text data (UTF-8 because I used notepad)
NewData = FileData.reverse                              #Reverse the text

File.open(FileName, "w:UTF-8"){ |file|                  #Open our file for reading. (I guess this is the format for Ruby? Very different)
    file.write(FileData.reverse)                        #Write out the reversed text to our file handler
}

puts "File reversed!"

# All done!