class Bob
  def hey(remark)
    @remark = remark
    return "Fine. Be that way!" if is_silent?
    return "Whoa, chill out!" if is_screaming?
    return "Sure." if is_question?
    return "Whatever."
  end

  def is_silent?
    @remark.strip.empty?
  end

  def is_screaming?
    @remark.upcase == @remark && @remark[/[A-Z]+/]
  end

  def is_question?
    @remark[-1] == "?"
  end
end