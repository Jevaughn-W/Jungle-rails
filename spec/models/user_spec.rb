require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    it "should create user with a password" do
      @user = User.new({
        first_name: "Test First Name",
        last_name: "Test Last Name",
        email: "testfirst_testlast@test.com",
        password: "tester1",
        password_confirmation: "tester1"
      })

      @user.save!

      expect(@user.password).to be_present
    end

    it "should create user with a password_confirmation" do
      @user = User.new({
        first_name: "Test First Name",
        last_name: "Test Last Name",
        email: "testfirst_testlast@test.com",
        password: "tester1",
        password_confirmation: "tester1"
      })

      @user.save!

      expect(@user.password_confirmation).to be_present
    end

    it "should not create user if password and password_confirmation are different" do
      
      expect {
        @user = User.new({
          first_name: "Test First Name",
          last_name: "Test Last Name",
          email: "testfirst_testlast@test.com",
          password: "tester1",
          password_confirmation: "tester"
        })

        @user.save!
      }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "should not create user if email already exists" do
      @user = User.new({
        first_name: "Test First Name",
        last_name: "Test Last Name",
        email: "testfirst_testlast@test.com",
        password: "tester1",
        password_confirmation: "tester1"
      })

      @user.save!

      expect{

        @user_two = User.new({
          first_name: "Test2 First Name",
          last_name: "Test2 Last Name",
          email: "testfirst_testlast@test.com",
          password: "tester2",
          password_confirmation: "tester2"
        })
        
        @user_two.save!

      }.to raise_error(ActiveRecord::RecordInvalid)

    end

    it "should require first name to create user" do
      expect {
        @user = User.new({
          first_name: nil,
          last_name: "Test Last Name",
          email: "testfirst_testlast@test.com",
          password: "tester1",
          password_confirmation: "tester1"
        })

        @user.save!
      }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "should require last name to create user" do
      expect {
        @user = User.new({
          first_name: "Test First Name",
          last_name: nil,
          email: "testfirst_testlast@test.com",
          password: "tester1",
          password_confirmation: "tester1"
        })

        @user.save!
      }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "should require an email to create user" do
      expect {
        @user = User.new({
          first_name: "Test First Name",
          last_name: "Test Last Name",
          email: nil,
          password: "tester1",
          password_confirmation: "tester1"
        })

        @user.save!
      }.to raise_error(ActiveRecord::RecordInvalid)
    end


  end

end
