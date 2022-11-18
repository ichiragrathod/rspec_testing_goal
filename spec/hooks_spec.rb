RSpec.describe "Hooks Example" do 
  before(:example) do
    puts "Before the example"
  end

  after(:example) do
    puts "Aftre the example"
  end

  before(:context) do 
    puts "Before the context"
  end

  after(:context) do 
    puts "Aftre the context"
  end
  
  it "returns 10000 answer" do
    expect(500+500).to eq(1000)
  end
  it "returns 500 answer" do
    expect(250+250).to eq(500)
  end
end

# Nested Hooks

# RSpec.describe "Nested Hooks Example" do 
  
#   before(:context) do 
#     puts "OUTER Before the context"
#   end
  
#   before(:example) do
#     puts "OUTER Before the example"
#   end
  
#   it "Basic math" do
#     expect(500+500).to eq(1000)
#   end
  
#   describe "Going Nested Describe Block" do 
#     before(:context) do 
#       puts "INNER Before the context"
#     end
    
#     before(:example) do
#       puts "INNER Before the example"
#     end
    
#     it "Does Basic math 1000" do
#       expect(500+500).to eq(1000)
#     end

#     it "Does Basic math 1000" do
#       expect(500+400).to eq(900)
#     end

#   end
# end
# OUTER Before the context
# OUTER Before the example
#   Basic math
#   Going Nested Describe Block
  
#   INNER Before the context
#   OUTER Before the example
#   INNER Before the example
#     Does Basic math 1000

#   OUTER Before the example
#   INNER Before the example
#     Does Basic math 1000

