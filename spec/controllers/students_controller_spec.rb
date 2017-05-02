require 'rails_helper'

describe StudentsController do

 describe "POST create" do
   context "with valid attributes" do
     it "creates a new student" do
       expect{
         post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
       }.to change(Student,:count).by(1)
     end

     it "redirects to the new student" do
       post :create, { :student => { :first_name => "Bill", :last_name => "Smith" } }
       expect(response).to redirect_to Student.last
     end
   end
 end

end

# RSpec.describe StudentsController, :type => :controller do
#
#   describe "GET new" do
#     it "returns http success" do
#       get :new
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET create" do
#     it "returns http success" do
#       get :create
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET show" do
#     it "returns http success" do
#       get :show, id: 1
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET edit" do
#     it "returns http success" do
#       get :edit, id: 1
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET update" do
#     it "returns http success" do
#       get :update, id: 1
#       expect(response).to be_success
#     end
#   end
#
# end
