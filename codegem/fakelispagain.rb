class Integer
  alias_method :plus, :+
  def +(*others)
    ([self] + others).inject &:plus
  end
end

def sexp_eval(sexp)
  return sexp unless sexp.is_a? Array
  return sexp.map {|x| sexp_eval x} unless [Symbol, Proc].include? sexp.first.class
  fn, *args = *sexp
  args = sexp_eval args
  fn.to_proc.call(*args)
end

puts sexp_eval [:flatten, [1,2, [:to_a, (4..6)], [:+, 8, 4]]]
