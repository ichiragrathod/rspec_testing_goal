require 'rails_helper'

RSpec.describe ArticlesController, type: :request do
  
  before do
    @user = FactoryBot.create(:user)
    sign_in @user
    @article = FactoryBot.create(:article)
  end

  describe "CRUD Operations" do

    it 'returns a index',focus: true do 
      get articles_path
      expect(response).to be_successful
    end

    it 'returns a show' do
      
      get article_path(@article)
      expect(response).to be_successful
    end

    it "returns a new" do
      get new_article_path(@article)
      expect(response).to be_successful
    end

    it "should be create the record" do
      expect do
        post '/articles', params: { article: {title:"Realme X2", body:"Article body"}}
      end.to change(Article, :count).by(1)
        expect(response).to have_http_status(:redirect)
    end

    it "returns a edit" do
      get edit_article_path(@article)
      expect(response).to be_successful
    end

    it "should be delete the record" do
      @article.destroy
      expect { @article.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end
