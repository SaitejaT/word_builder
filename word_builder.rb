words=[]
while true
  word=STDIN.readline.strip
  if (words.include? word)
    puts " -> #{word} already used"
  elsif (!words.empty? && words[-1][-1] != word[0])
    puts " -> #{word} doesn't chain with #{words[-1]}"
  else
    words << word
  end
end

