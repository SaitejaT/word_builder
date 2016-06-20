words=[]
word_count=1
while true
  print "#{word_count} "
  word=STDIN.readline.strip
  if (words.include? word)
    puts " -> #{word} already used"
  elsif (!words.empty? && words[-1][-1] != word[0])
    puts " -> #{word} doesn't chain with #{words[-1]}"
  else
    words << word
    word_count+=1
  end
end

