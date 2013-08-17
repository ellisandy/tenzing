require File.dirname(__FILE__) + '/../spec_helper'

describe User do
  
   before(:each) do
    User.delete_all
  end

  it "should be valid" do
    FactoryGirl.build(:user).should be_valid
  end

  it "should require username" do
    FactoryGirl.build(:user, :username => '').should have(1).error_on(:username)
  end

  it "should require password" do
    FactoryGirl.build(:user, :password => '').should have(2).error_on(:password)
  end

  it "should require well formed email" do
    FactoryGirl.build(:user, :email => 'foo@bar@example.com').should have(1).error_on(:email)
  end

  it "should validate uniqueness of email" do
    FactoryGirl.build(:user, :email => 'bar@example.com').save!
    FactoryGirl.build(:user, :email => 'bar@example.com').should have(1).error_on(:email)
  end

  it "should validate uniqueness of username" do
    FactoryGirl.build(:user, :username => 'uniquename').save!
    FactoryGirl.build(:user, :username => 'uniquename').should have(1).error_on(:username)
  end

  it "should not allow odd characters in username" do
    FactoryGirl.build(:user, :username => 'odd ^&(@)').should have(1).error_on(:username)
  end

  it "should validate password is longer than 3 characters" do
    FactoryGirl.build(:user, :password => 'bad', :password_confirmation => 'bad').should have(1).error_on(:password)
  end

  it "should require matching password confirmation" do
    FactoryGirl.build(:user, :password_confirmation => 'nonmatching').should have(1).error_on(:password)
  end

  it "should generate password hash and salt on create" do
    user = FactoryGirl.build(:user) 
    user.save!
    user.password_hash.should_not be_nil
    user.password_salt.should_not be_nil
  end

  it "should authenticate by username" do
    user = FactoryGirl.build(:user, :username => 'foobar', :email => "foo@bar.com", :password => 'secret', :password_confirmation => 'secret')
    user.save!
    User.count.should eq(1)
    User.authenticate('foobar', 'secret').should == user
  end

  it "should authenticate by email" do
    user = FactoryGirl.build(:user, :username => "username", :email => 'foo@bar.com', :password => 'secret', :password_confirmation => 'secret')
    user.save!
    User.authenticate('foo@bar.com', 'secret').should == user
  end

  it "should not authenticate bad username" do
    User.authenticate('nonexisting', 'secret').should be_nil
  end

  it "should not authenticate bad password" do
    FactoryGirl.build(:user, :username => 'foobar').save!
    User.authenticate('foobar', 'badpassword').should be_nil
  end
  
  it "associates with smoke breaks" do
    User.new.should respond_to(:smoke_breaks)
  end
  
  it "associates with books" do
    User.new.should respond_to(:books)
  end
  
  it "associates with posessions" do
    User.new.should respond_to(:possessions)
  end

  it "associates with categories" do
    User.new.should respond_to(:categories)
  end
end
# == Schema Information
#
# Table name: users
#
#  id            :integer         not null, primary key
#  username      :string(255)
#  email         :string(255)
#  password_hash :string(255)
#  password_salt :string(255)
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

