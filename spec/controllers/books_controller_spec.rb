require 'spec_helper'

describe BooksController do

  before(:each) do 
    @user = FactoryGirl.create(:user)
    @controller.stubs(:current_user).returns(@user)
  end

  describe "GET index" do
    it "assigns all books as @books" do
      book = FactoryGirl.create(:book, :user => @user)
      get :index
      assigns(:books).should eq([book])
    end

    it "assigns all books as @books not including other users" do
      book = FactoryGirl.create_list(:book, 4, :user => @user)
      @other_user = FactoryGirl.create(:user, :email => "ematil.adsf@email.com", :username => "other-user")
      other_books = FactoryGirl.create_list(:book, 4, :user => @other_user)
      get :index
      assigns(:books).should eq(book)
    end
  end

  describe "GET show" do
    it "assigns the requested book as @book" do
      book = FactoryGirl.create(:book, :user => @user)
      get :show, {:id => book.to_param}
      assigns(:book).should eq(book)
    end
  end

  describe "GET new" do
    it "assigns a new book as @book" do
      get :new
      assigns(:book).should be_a_new(Book)
    end
  end

  describe "GET edit" do
    it "assigns the requested book as @book" do
      book = FactoryGirl.create(:book, :user => @user)
      get :edit, {:id => book.to_param}
      assigns(:book).should eq(book)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Book" do
        expect {
          post :create, {:book => FactoryGirl.attributes_for(:book, :user => @user)}
        }.to change(Book, :count).by(1)
      end

      it "assigns a newly created book as @book" do
        post :create, {:book => FactoryGirl.attributes_for(:book, :user => @user)}
        assigns(:book).should be_a(Book)
        assigns(:book).should be_persisted
      end

      it "redirects to the created book" do
        post :create, {:book => FactoryGirl.attributes_for(:book, :user => @user)}
        response.should redirect_to(books_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved book as @book" do
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        post :create, {:book => { "title" => "invalid value" }}
        assigns(:book).should be_a_new(Book)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        post :create, {:book => { "title" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested book" do
        book = FactoryGirl.create(:book, :user => @user)
        Book.any_instance.should_receive(:update_attributes).with({ "title" => "MyString2" })
        put :update, {:id => book.to_param, :book => { "title" => "MyString2" }}
      end

      it "assigns the requested book as @book" do
        book = FactoryGirl.create(:book, :user => @user) 
        put :update, {:id => book.to_param, :book => FactoryGirl.attributes_for(:book, :title => "new title")}
        assigns(:book).should eq(book)
      end

      it "redirects to the book" do
        book = FactoryGirl.create(:book, :user => @user) 
        put :update, {:id => book.to_param, :book => FactoryGirl.attributes_for(:book)}
        response.should redirect_to(books_path)
      end
    end

    describe "with invalid params" do
      it "assigns the book as @book" do
        book = FactoryGirl.create(:book, :user => @user) 
        Book.any_instance.stub(:save).and_return(false)
        put :update, {:id => book.to_param, :book => { "title" => "invalid value" }}
        assigns(:book).should eq(book)
      end

      it "re-renders the 'edit' template" do
        book = FactoryGirl.create(:book, :user => @user) 
        # Trigger the behavior that occurs when invalid params are submitted
        Book.any_instance.stub(:save).and_return(false)
        put :update, {:id => book.to_param, :book => { "title" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested book" do
      book = FactoryGirl.create(:book, :user => @user) 
      expect {
        delete :destroy, {:id => book.to_param}
      }.to change(Book, :count).by(-1)
    end

    it "redirects to the books list" do
      book = FactoryGirl.create(:book, :user => @user) 
      delete :destroy, {:id => book.to_param}
      response.should redirect_to(books_url)
    end
  end

end
