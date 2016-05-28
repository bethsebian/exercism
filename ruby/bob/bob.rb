class Bob
  def hey(remark)
    return "Fine. Be that way!" unless remark[/[A-Za-z0-9]+/]
    return "Whoa, chill out!" if remark.upcase == remark && remark[/[A-Z]+/]
    return "Sure." if remark[-1] == "?"
    return "Whatever." 
  end
end