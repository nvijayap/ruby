describe "iterators" do
  
  it "each, map, select, inject" do
    
    a = [3,2,1]
    
    a[3] = a[2] -1
    a.should == [3,2,1,0]
    
    s = 0
    a.each { |e| s += e }
    s.should == 6
    
    b = a.map { |e| e*e }
    b.should == [9,4,1,0]
    
    c = a.select { |e| e%2 == 0 }
    c.should == [2,0]
    
    d = a.inject { |sum, e| sum + e }
    d.should == 6
    
  end
  
end