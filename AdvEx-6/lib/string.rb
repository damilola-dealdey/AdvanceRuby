class Mystring < String
  def excludes? str
    !(self.include? str)    
  end
end
