def decode(message)
  history = Hash.new(message)

  gsub_args = [[/1a1/, "a"], [/1a0/, "b"], [/0a1/, "c"]]

  gsub_args.each_with_index do |args, i|
    history[i+1] = history[i].send(:gsub, args[0], args[1])
  end

  puts history.values.last.reverse

end

decode(".dn1a1ts 1a1n1a1n1a11a0 eht ni yenom s'erehT")