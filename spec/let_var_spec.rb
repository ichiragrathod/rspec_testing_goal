RSpec.describe "Let Variable Example" do 
  
  context "var exersize" do 
    let(:var) {var=899}
    let(:myVar) {myVar=5}
    it "execute first block" do 
      puts "First Example"
      puts myVar
    end

    it "execute second block" do 
      puts "second Example"
      puts myVar
      myVar=10
      puts myVar
      puts myVar
    end

    it "execute third  block" do 
      puts "third Example"
      puts myVar
    end
  end
  context "second context " do 
    let(:myVar) {myVar=50}

    it "execute second context it block" do 
      puts "First Example"
      puts myVar
    end
    
  end




end