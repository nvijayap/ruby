describe "Some Ruby Classes" do

  #----- String, Fixnum, Float ------

  it "Should be a String" do
    "Joe".class.should == String
  end

  it "Should be a Fixnum" do
    9.class.should == Fixnum
  end

  it "Should be a Float" do
    8.7.class.should == Float
  end

  #----- Collection Types -----------

  it "Should be an Array" do
    [].class.should == Array
  end

  it "Should be a Hash" do
    {}.class.should == Hash
  end

  it "Should be a Range" do
    (0..9).class.should == Range
  end

  #----- Regex, Symbol --------------

  it "Should be a Regexp" do
    //.class.should == Regexp
  end

  it "Should be a Symbol" do
    :name.class.should == Symbol
  end

  #----- True, False, Nil -----------
  
  it "Should be a TrueClass" do
    true.class.should == TrueClass
  end

  it "Should be a FalseClass" do
    false.class.should == FalseClass
  end

  it "Should be a NilClass" do
    nil.class.should == NilClass
  end

  #----- User-Defined Class C -----------

  class C
  end

  it "Should be a C Class" do
    C.new.class.should == C
  end

end
