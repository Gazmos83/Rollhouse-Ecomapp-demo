require 'rails_helper'

describe ProductsController, type: :controller do

  before do
      @user = FactoryBot.create(:user)
      @admin = FactoryBot.create(:admin)
      @product = FactoryBot.create(:product)
  end

  describe "GET #index" do
    it "renders the index template" do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end

  describe "GET #show" do
    it "shows products page" do
      get :show, params: {id: @product}
      expect(response).to be_ok
      expect(response).to render_template('show')
    end
  end

  describe "GET #new" do
    before do
      sign_in @user
    end
    it "renders new product page" do
      get :new, params: {id: @product}
      expect(response).to be_ok
        expect(response).to render_template('new')
    end
  end

  describe "GET #edit" do
    before do
      sign_in @user
    end
    it "renders newly edited page" do
      get :edit, params: {id: @product}
      expect(response).to be_ok
      expect(response).to render_template('edit')
    end
  end

  describe "POST #create" do
    before do
      sign_in @user
    end
    it "creates a new product" do
      post :create, params: {id: @product }
      expect(response).to render_template('show')
    end
  end

  describe "PUT #update" do
    before do
      sign_in @user
    end
    it "destroys product" do
      delete :destroy, params: {id: @product}
      expect(response).to redirect_to products_url
    end
  end


end
