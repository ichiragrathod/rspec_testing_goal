require 'rails_helper'

RSpec.describe Article, type: :model do
  context "validation tests" do
    it 'ensures title presence' do 
      article = Article.new(body:"This is my body").save 
      expect(article).to eq(false)   
    end

    it 'ensures body presence' do 
      article = Article.new(title:"This is my title").save 
      expect(article).to eq(false)   
    end

  end
  context "testing associations" do
    it "belongs to a User" do
      expect { FactoryBot.build(:article).user }.to_not raise_error
    end
  end
  
end
