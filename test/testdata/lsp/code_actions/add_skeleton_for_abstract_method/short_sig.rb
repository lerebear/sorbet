# typed: true
# selective-apply-code-action: quickfix
class Parent
  extend T::Sig
  extend T::Helpers
  abstract!

  sig {abstract.params(bar: Integer).returns(String)}
  def foo(bar); end
end

  class Child < Parent
# ^^^^^^^^^^^^^^^^^^^^ error: Missing definition for abstract method `Parent#foo`
# ^ apply-code-action: [A] Define `Parent#foo`
  end
