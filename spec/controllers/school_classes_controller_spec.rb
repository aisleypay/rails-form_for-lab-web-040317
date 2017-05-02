require 'rails_helper'

describe SchoolClassesController do

 describe "POST create" do
   context "with valid attributes" do
     it "creates a new school_class" do
       expect{
         post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
       }.to change(SchoolClass,:count).by(1)
     end

     it "redirects to the new school_class" do
       post :create, { :school_class => { :title => "Computer Science", :room_number => 5 } }
       expect(response).to redirect_to SchoolClass.last
     end
   end
 end

end

# RSpec.describe SchoolClassesController, :type => :controller do
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
#       get :show
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET edit" do
#     it "returns http success" do
#       get :edit
#       expect(response).to be_success
#     end
#   end
#
#   describe "GET update" do
#     it "returns http success" do
#       get :update
#       expect(response).to be_success
#     end
#   end
#
# end
