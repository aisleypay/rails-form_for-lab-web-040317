require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

  describe "GET new" do
    it "returns http success" do
      get :new
      expect(response).to be_success
    end
  end

  describe "GET create" do
    it "returns http success" do
      get :create
      expect(response).to be_success
    end
  end

  describe "GET show" do
    it "returns http success" do
      get :show, id: 1
      expect(response).to be_success
    end
  end

  describe "GET edit" do
    it "returns http success" do
      get :edit, id: 1
      expect(response).to be_success
    end
  end

  describe "GET update" do
    it "returns http success" do
      get :update, id: 1
      expect(response).to be_success
    end
  end

end
