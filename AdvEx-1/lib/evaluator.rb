class Evaluator

  def evaluate a, operator , b
    a.send(operator,b)
  end

  def do_block_stuff
    yield
  end

  def do_parameterized_block 
    yield(5)
  end

end