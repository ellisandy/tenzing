require 'spec_helper'

describe PossessionsController do

   before(:each) do
      @user = FactoryGirl.create(:user)
      @controller.stubs(:current_user).returns(@user)
      @attributes_for = FactoryGirl.attributes_for(:possession, :user => @user)
   end

  describe "GET index" do
    it "assigns all possessions as @possessions" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create_list(:possession, 4, :user => @user, :category => @category) 
      @other_user = FactoryGirl.create(:user, :username => "asdf", :email => "email@emailsad.com")
      other_possession = FactoryGirl.create_list(:possession, 4, :user => @other_user, :category => @category) 
      get :index
      assigns(:possessions).should eq(possession)
    end
  end

  describe "GET show" do
    it "assigns the requested possession as @possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
      get :show, {:id => possession.to_param}
      assigns(:possession).should eq(possession)
    end
  end

  describe "GET new" do
    it "assigns a new possession as @possession" do
      get :new
      assigns(:possession).should be_a_new(Possession)
    end
  end

  describe "GET edit" do
    it "assigns the requested possession as @possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
      get :edit, {:id => possession.to_param}
      assigns(:possession).should eq(possession)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Possession" do
        expect {
          post :create, {:possession => FactoryGirl.attributes_for(:possession, :user => @user)}
        }.to change(Possession, :count).by(1)
      end

      it "assigns a newly created possession as @possession" do
        post :create, {:possession => @attributes_for}
        assigns(:possession).should be_a(Possession)
        assigns(:possession).should be_persisted
      end

      it "redirects to the created possession" do
        post :create, {:possession => @attributes_for}
        response.should redirect_to(Possession.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved possession as @possession" do
        # Trigger the behavior that occurs when invalid params are submitted
        Possession.any_instance.stub(:save).and_return(false)
        post :create, {:possession => { "category_id" => "invalid value" }}
        assigns(:possession).should be_a_new(Possession)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Possession.any_instance.stub(:save).and_return(false)
        post :create, {:possession => { "category_id" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
        # Assuming there are no other possessions in the database, this
        # specifies that the Possession created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Possession.any_instance.should_receive(:update_attributes).with({ "category_id" => "1" })
        put :update, {:id => possession.to_param, :possession => { "category_id" => "1" }}
      end

      it "assigns the requested possession as @possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
        put :update, {:id => possession.to_param, :possession => @attributes_for}
        assigns(:possession).should eq(possession)
      end

      it "redirects to the possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
        put :update, {:id => possession.to_param, :possession => FactoryGirl.attributes_for(:possession, :user => @user)}
        response.should redirect_to(possession)
      end
    end

    describe "with invalid params" do
      it "assigns the possession as @possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
        # Trigger the behavior that occurs when invalid params are submitted
        Possession.any_instance.stub(:save).and_return(false)
        put :update, {:id => possession.to_param, :possession => { "category_id" => "invalid value" }}
        assigns(:possession).should eq(possession)
      end

      it "re-renders the 'edit' template" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
        # Trigger the behavior that occurs when invalid params are submitted
        Possession.any_instance.stub(:save).and_return(false)
        put :update, {:id => possession.to_param, :possession => { "category_id" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested possession" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
      expect {
        delete :destroy, {:id => possession.to_param}
      }.to change(Possession, :count).by(-1)
    end

    it "redirects to the possessions list" do
      category = FactoryGirl.create(:category, :user => @user)
      possession = FactoryGirl.create(:possession, :user => @user, :category => @category) 
      delete :destroy, {:id => possession.to_param}
      response.should redirect_to(possessions_url)
    end
  end

end
