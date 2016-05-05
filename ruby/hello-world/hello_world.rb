class HelloWorld
  def self.hello(name='Schmo')
    if name == "Alice"
      "Hello, Alice!"
    elsif name == "Bob"
      "Hello, Bob!"
    elsif name == ""
      "Hello, !"
    else
      "Hello, World!"
    end
  end
end
