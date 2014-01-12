#
# --------------
# is_n_palin.rb
# --------------
# Checks if a number is palindrome or not by -
# . Using math logic only, and
# . Not using any Ruby Library
#

def is_n_palin? n
  begin
    if Float(n).to_i != n.to_i
      abort "'#{n}' is NOT a Whole Number"
    end
  rescue
    abort "'#{n}' is NOT a Number"
  end

  n = n.to_i
  m = n ; r = 0

  while m > 0 do
    r = 10 * r + m - 10 * (m/10)
    m = m/10
  end

  n==r
end

describe "test a number palindrome" do
  it "is not a palindrome" do
    is_n_palin?(12).should == false
  end

  it "is a palindrome" do
    is_n_palin?(121).should == true
  end
end

