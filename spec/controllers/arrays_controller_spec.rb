require 'rails_helper'

RSpec.describe ArraysController, type: :controller do
  describe "GET index" do
    
    it "has a 200 status code" do
      get :index
      expect(response.code).to eq("200")
    end

    it "creates a flattened_x variables as arrays" do
      get :index
      expect(assigns(:flattened_1)).to be_a(Array)
      expect(assigns(:flattened_2)).to be_a(Array)
      expect(assigns(:flattened_3)).to be_a(Array)
      expect(assigns(:flattened_4)).to be_a(Array)
    end

    it "creates a selected_squad with the correct type of players" do
      expected_result_1 = [1, 2, 3, 4]
      expected_result_2 = [1, 2, 3, 6, 9, 4, 9, 8, 9, 3, 3, 0, 9]
      expected_result_3 = [1, 5, 3, 6, 9, 8, 6, 1, 2, 9, 2, 1, 22, 73, 9, 7, 9, 76, 9, 8, 9, 7, 72, 9, 37, 1, 8, 9]
      expected_result_4 = [1, 5, 3, 6, 1, 9]

      get :index
      expect(assigns(:flattened_1)).to eq(expected_result_1)
      expect(assigns(:flattened_2)).to eq(expected_result_2)
      expect(assigns(:flattened_3)).to eq(expected_result_3)
      expect(assigns(:flattened_4)).to eq(expected_result_4)
    end
  end
end
