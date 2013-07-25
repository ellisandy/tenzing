require File.dirname(__FILE__) + '/../spec_helper'

describe SmokeBreaksController do

  before(:each) do 
    @user = FactoryGirl.create(:user)
    @controller.stubs(:current_user).returns(@user)
  end


  it "index action should render index template" do
    get :index
    response.should render_template(:index)
  end

  it "create action should render new template when model is invalid" do
    SmokeBreak.any_instance.stub(:valid?).and_return(false)
    post :create
    response.should render_template(:new)
  end

  it "create action should redirect when model is valid" do
    post :create, :smoke_break => FactoryGirl.attributes_for(:smoke_break, :user_id => @user.id) 
    response.should redirect_to(root_url)
  end

  it "destroy action should destroy model and redirect to index action" do
    smoke_break = FactoryGirl.create(:smoke_break, :user => @user)
    delete :destroy, :id => smoke_break
    response.should redirect_to(smoke_breaks_url)
    SmokeBreak.exists?(smoke_break.id).should be_false
  end

  it "update action should render edit template when model is invalid" do
    smoke_break = FactoryGirl.create(:smoke_break, :user => @user)
    SmokeBreak.stub(:valid?).and_return(false)
    put :update, :id => smoke_break.to_param, :smoke_break => {:user_id => nil}
    response.should render_template(:edit)
  end

  it "update action should redirect when model is valid" do
    smoke_break = FactoryGirl.create(:smoke_break, :user => @user)
    smoke_break.stubs(:valid?).returns(true)
    put :update, :id => smoke_break.id
    response.should redirect_to(smoke_breaks_url)
  end

  it "edit action should render edit template" do
    smoke_break = FactoryGirl.create(:smoke_break, :user => @user)
    get :edit, :id => smoke_break.id
    response.should render_template(:edit)
  end

  it "new action should render new template" do
    get :new
    response.should render_template(:new)
  end
end
