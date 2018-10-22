def balanced?(string)
  parens = []
  string.split("").each do |p|
    if p == ")" 
      if parens.size == 0
        p "unbalanced"
        exit
      end
      parens.pop()
    elsif p == "("
      parens.push(p)
    end
  end

  if parens.size != 0
    p "Unbalanced at"
    p parens.last
    exit
  else
    p "perfect balanced"
    exit
  end
end

#p balanced?("((()))")
p balanced?("((()()")
