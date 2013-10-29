require 'spec_helper'

describe GenresController do

   before(:each) do
      @user = FactoryGirl.create(:user)
      @controller.stubs(:current_user).returns(@user)
   end

  describe "GET index" do
    it "assigns all genres as @genres" do
      genre = FactoryGirl.create_list(:genre, 4, :user => @user)
      other_user = FactoryGirl.create(:user, :username => "Asdaf", :email => "email@email.com")
      other_genre = FactoryGirl.create_list(:genre, 4, :user => other_user)
      get :index
      assigns(:genres).should eq(genre)
    end
  end

  describe "GET show" do
    it "assigns the requested genre as @genre" do
      genre = FactoryGirl.create(:genre, :user => @user)
      get :show, {:id => genre.to_param}
      assigns(:genre).should eq(genre)
    end

    it "shows all the assigned books" do
      genre = FactoryGirl.create(:genre, :user => @user)
      books = FactoryGirl.create_list(:book, 10, :user => @user, :genre => genre)
      get :show, {:id => genre.to_param}
      assigns(:books).should eq( genre.books ) 
    end

    it "retreives all the related books" do
      genre = FactoryGirl.create(:genre, :user => @user)
      books = FactoryGirl.create_list(:book, 10, :user => @user, :genre => genre)
      get :show, {:id => genre.to_param}
      assigns(:books).count.should eq( 10 ) 
    end
  end

  describe "GET new" do
    it "assigns a new genre as @genre" do
      get :new
      assigns(:genre).should be_a_new(Genre)
    end
  end

  describe "GET edit" do
    it "assigns the requested genre as @genre" do
      genre = FactoryGirl.create(:genre, :user => @user)
      get :edit, {:id => genre.to_param}
      assigns(:genre).should eq(genre)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Genre" do
        expect {
          post :create, {:genre => FactoryGirl.attributes_for(:genre, :user_id => @user.id)}
        }.to change(Genre, :count).by(1)
      end

      it "assigns a newly created genre as @genre" do
        post :create, {:genre => FactoryGirl.attributes_for(:genre, :user_id => @user.id)}
        assigns(:genre).should be_a(Genre)
        assigns(:genre).should be_persisted
      end

      it "redirects to the created genre" do
        post :create, {:genre => FactoryGirl.attributes_for(:genre, :user_id => @user.id)}
        response.should redirect_to(genres_path)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved genre as @genre" do
        # Trigger the behavior that occurs when invalid params are submitted
        Genre.any_instance.stub(:save).and_return(false)
        post :create, {:genre => { "title" => "invalid value" }}
        assigns(:genre).should be_a_new(Genre)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Genre.any_instance.stub(:save).and_return(false)
        post :create, {:genre => { "title" => "invalid value" }}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested genre" do
        genre = FactoryGirl.create(:genre, :user => @user)
        # Assuming there are no other genres in the database, this
        # specifies that the Genre created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Genre.any_instance.should_receive(:update_attributes).with({ "title" => "MyString" })
        put :update, {:id => genre.to_param, :genre => { "title" => "MyString" }}
      end

      it "assigns the requested genre as @genre" do
        genre = FactoryGirl.create(:genre, :user => @user)
        put :update, {:id => genre.to_param, :genre => FactoryGirl.attributes_for(:genre, :title => "Drama")}
        assigns(:genre).should eq(genre)
      end

      it "redirects to the genre" do
        genre = FactoryGirl.create(:genre, :user => @user)
        put :update, {:id => genre.to_param, :genre => FactoryGirl.attributes_for(:genre, :title => "Drama")}
        response.should redirect_to(genre)
      end
    end

    describe "with invalid params" do
      it "assigns the genre as @genre" do
        genre = FactoryGirl.create(:genre, :user => @user)
        # Trigger the behavior that occurs when invalid params are submitted
        Genre.any_instance.stub(:save).and_return(false)
        put :update, {:id => genre.to_param, :genre => { "title" => "invalid value" }}
        assigns(:genre).should eq(genre)
      end

      it "re-renders the 'edit' template" do
	genre = FactoryGirl.create(:genre, :user => @user)
        # Trigger the behavior that occurs when invalid params are submitted
        Genre.any_instance.stub(:save).and_return(false)
        put :update, {:id => genre.to_param, :genre => { "title" => "invalid value" }}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested genre" do
      genre = FactoryGirl.create(:genre, :user => @user)
      expect {
        delete :destroy, {:id => genre.to_param}
      }.to change(Genre, :count).by(-1)
    end

    it "redirects to the genres list" do
      genre = FactoryGirl.create(:genre, :user => @user)
      delete :destroy, {:id => genre.to_param}
      response.should redirect_to(genres_url)
    end
  end

end
