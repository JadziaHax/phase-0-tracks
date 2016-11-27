# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
  "iNvEsTiGaTiOn".swapcase

# "zom".<???>
# => “zoom”
  "zom".gsub("o", 'oo')  

# "enhance".<???>
# => "    enhance    "
  "enhance".center(16)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
  "Stop! You’re under arrest!".upcase

# "the usual".<???>
#=> "the usual suspects"
  "the usual"concat "suspects"

# " suspects".<???>
# => "the usual suspects"
   " suspects".prepend "the usual"
# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
  "The case of the disappearing last letter".chop
# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
  "The mystery of the missing first letter"[1, 38]
# "z".<???>
# => 122 
  "z".ord
# (What is the significance of the number 122 in relation to the character z?)
  122 is the ordinal value of the character 'z'
# "How many times does the letter 'a' appear in this string?".<???>
# => 4
  "How many times does the letter 'a' appear in this string?".count "a"