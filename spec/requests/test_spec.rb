RSpec.describe "My Test" do
  it "Check Methemetical values" do 
    expect(2+3).to eq(5)
  end

  it "Check String value" do 
    expect("Chirag Rathod").to eq("Chirag Rathod "), "String is not matched!"
  end
end