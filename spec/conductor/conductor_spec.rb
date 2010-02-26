require "spec_helper"

describe Conductor do
  class FakeConductor < Conductor
    def initialize
    end

    def user
      @user ||= User.new
    end

    conduct_date :user, :birthday
  end

  class User
    attr_accessor :birthday
  end

  describe "parsing a date" do
    before do
      @conductor = FakeConductor.new()
    end

    it "should assign the birthday" do
      @conductor.birthday = [2010, 2, 26]
      @conductor.birthday.should == Date.parse("2010-02-26")
    end

    it "should assign nil if given something which isn't a date" do
      @conductor.birthday = ["asdfasdf"]
      @conductor.birthday.should be_nil
    end

    it "should parse a string" do
      @conductor.birthday = "2010-2-26"
      @conductor.birthday.should == Date.parse("2010-02-26")
    end

    it "should keep nil as nil" do
      @conductor.birthday = nil
      @conductor.birthday.should be_nil
    end
  end
end