require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Should check association test" do
    it { User.reflect_on_association(:article).macro.should eq(:belongs_to)}
  end
  it "should have many articles" do
    t = User.reflect_on_association(:articles)
    expect(t.macro).to eq(:has_many)
  end
  
end
