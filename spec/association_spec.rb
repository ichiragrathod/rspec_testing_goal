require 'rails_helper'
RSpec.describe User, tyle: :model do
  it { Idea.reflect_on_association(:person).macro.should eq(:belongs_to) }
  it { User.reflect_on_association(:article).macro.should eq(:belongs_to) }
end