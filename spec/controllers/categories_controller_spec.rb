require 'spec_helper'
describe CategoriesController do

  before(:each) do 
    @user = FactoryGirl.create(:user)
    @controller.stubs(:current_user).returns(@user)
  end

  describe "GET index" do
    it "assigns all categories as @categories" do
      category = FactoryGirl.create_list(:category, 4, :user => @user)
      get :index
      assigns(:categories).should eq(category)
    end

    it "assigns all categories as @categories" do
      category = FactoryGirl.create_list(:category, 4, :user => @user)
      @other_user = FactoryGirl.create(:user, :email => "ematil.adsf@email.com", :username => "other-user")
      other_category = FactoryGirl.create_list(:category, 4, :user => @other_user)
      get :index
      assigns(:categories).should eq(category)
    end
  end

  describe "GET show" do
    it "assigns the requested category as @category" do
      category = Category.create!
      get :show, {:id => category.to_param}
      assigns(:category).should eq(category)
    end
  end

  describe "GET new" do
    it "assigns a new category as @category" do
      get :new
      assigns(:category).should be_a_new(Category)
    end
  end

  describe "GET edit" do
    it "assigns the requested category as @category" do
      category = Category.create!
      get :edit, {:id => category.to_param}
      assigns(:category).should eq(category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Category" do
        expect {
          post :create, {:category => FactoryGirl.attributes_for(:category, :user => @user)}
        }.to change(Category, :count).by(1)
      end

      it "assigns a newly created category as @category" do
        post :create, {:category => FactoryGirl.attributes_for(:category, :user => @user)}
        assigns(:category).should be_a(Category)
        assigns(:category).should be_persisted
      end

      it "redirects to the created category" do
        post :create, {:category => FactoryGirl.attributes_for(:category, :user => @user)}
        response.should redirect_to(Category.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved category as @category" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => { "title" => "invalid value" }}
        assigns(:category).should be_a_new(Category)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        post :create, {:category => { "title" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested category" do
        category = Category.create!
        # Assuming there are no other categories in the database, this
        # specifies that the Category created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Category.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => category.to_param, :category => { "title" => "MyString" }}
      end

      it "assigns the requested category as @category" do
        category = FactoryGirl.create(:category, :user => @user) 
        put :update, {:id => category.to_param, :category => FactoryGirl.attributes_for(:category, :user => @user)}
        assigns(:category).should eq(category)
      end

      it "redirects to the category" do
        category = FactoryGirl.create(:category, :user => @user) 
        put :update, {:id => category.to_param, :category => FactoryGirl.attributes_for(:category, :user => @user)}
        response.should redirect_to(category)
      end
    end

    describe "with invalid params" do
      it "assigns the category as @category" do
        category = FactoryGirl.create(:category, :user => @user) 
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, {:id => category.to_param, :category => { "title" => "invalid value" }}
        assigns(:category).should eq(category)
      end

      it "re-renders the 'edit' template" do
        category = FactoryGirl.create(:category, :user => @user) 
        # Trigger the behavior that occurs when invalid params are submitted
        Category.any_instance.stub(:save).and_return(false)
        put :update, {:id => category.to_param, :category => { "title" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested category" do
      category = Category.create!
      expect {
        delete :destroy, {:id => category.to_param}
      }.to change(Category, :count).by(-1)
    end

    it "redirects to the categories list" do
      category = Category.create!
      delete :destroy, {:id => category.to_param}
      response.should redirect_to(categories_url)
    end
  end

end
