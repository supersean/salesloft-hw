require 'rails_helper'

RSpec.describe Api::ManagedUsersController, type: :controller do

  describe "GET index" do
    context "with valid authentication" do
      it "returns a list of all users"
    end

    context "with invalid authentication" do
      it "returns a 401 (probably)"
    end
      
  end

end
