require 'rails_helper'

RSpec.describe SquadsController, type: :controller do
  describe "GET index" do

    it "has a 200 status code" do
      get :index
      expect(response.code).to eq("200")
    end

    it "creates a selected_squad as an array" do
      get :index
      expect(assigns(:selected_squad)).to be_a(Array)
    end

    it "creates a selected_squad as an array" do
      get :index
      expect(assigns(:selected_squad)).to be_a(Array)
    end

    it "creates a selected_squad with the correct type of players" do
      expected_squad =  [{"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/38.jpg", "squad_id"=>3, "country"=>"Saint Vincent and The Grenadines", "last_played"=>"Sun May 10 2015 09:47:43 GMT+0000 (UTC)", "name"=>"Mercedes Whitehead", "position"=>"prop", "is_injured"=>false, "id"=>38}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/43.jpg", "squad_id"=>3, "country"=>"Martinique", "last_played"=>"Fri Feb 20 2015 07:34:47 GMT+0000 (UTC)", "name"=>"Ratliff Avery", "position"=>"prop", "is_injured"=>false, "id"=>43}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/8.jpg", "squad_id"=>9, "country"=>"Netherlands Antilles", "last_played"=>"Fri Jan 23 2015 03:14:38 GMT+0000 (UTC)", "name"=>"Britney Ballard", "position"=>"hooker", "is_injured"=>false, "id"=>8}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/16.jpg", "squad_id"=>3, "country"=>"Dominican Republic", "last_played"=>"Thu Mar 26 2015 04:53:29 GMT+0000 (UTC)", "name"=>"Courtney Wells", "position"=>"lock", "is_injured"=>false, "id"=>16}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/33.jpg", "squad_id"=>3, "country"=>"Ecuador", "last_played"=>"Thu Sep 10 2015 04:35:21 GMT+0000 (UTC)", "name"=>"Calderon Byrd", "position"=>"lock", "is_injured"=>false, "id"=>33}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/7.jpg", "squad_id"=>0, "country"=>"Tanzania", "last_played"=>"Fri Apr 24 2015 19:54:47 GMT+0000 (UTC)", "name"=>"Gallagher Grimes", "position"=>"flanker", "is_injured"=>false, "id"=>7}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/47.jpg", "squad_id"=>3, "country"=>"Norway", "last_played"=>"Mon Jun 29 2015 04:48:11 GMT+0000 (UTC)", "name"=>"Kaufman Ferrell", "position"=>"flanker", "is_injured"=>false, "id"=>47}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/9.jpg", "squad_id"=>2, "country"=>"South Africa", "last_played"=>"Sat May 23 2015 10:33:19 GMT+0000 (UTC)", "name"=>"Edwards Robinson", "position"=>"number-eight", "is_injured"=>false, "id"=>9}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/26.jpg", "squad_id"=>1, "country"=>"Andorra", "last_played"=>"Mon Mar 30 2015 22:14:22 GMT+0000 (UTC)", "name"=>"Joy Stein", "position"=>"scrum-half", "is_injured"=>false, "id"=>26}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/4.jpg", "squad_id"=>8, "country"=>"Somalia", "last_played"=>"Sun Apr 19 2015 16:25:42 GMT+0000 (UTC)", "name"=>"Willa Winters", "position"=>"out-half", "is_injured"=>false, "id"=>4}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/23.jpg", "squad_id"=>1, "country"=>"Zambia", "last_played"=>"Tue Apr 21 2015 01:49:08 GMT+0000 (UTC)", "name"=>"Sweet Jordan", "position"=>"centre", "is_injured"=>false, "id"=>23}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/31.jpg", "squad_id"=>3, "country"=>"Bahamas", "last_played"=>"Mon Jan 19 2015 09:34:14 GMT+0000 (UTC)", "name"=>"Lawanda Maddox", "position"=>"centre", "is_injured"=>false, "id"=>31}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/18.jpg", "squad_id"=>3, "country"=>"France", "last_played"=>"Wed Jul 29 2015 09:08:43 GMT+0000 (UTC)", "name"=>"Diana Wiley", "position"=>"winger", "is_injured"=>false, "id"=>18}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/24.jpg", "squad_id"=>2, "country"=>"Zimbabwe", "last_played"=>"Sat Feb 21 2015 03:26:55 GMT+0000 (UTC)", "name"=>"Jacobs Sherman", "position"=>"winger", "is_injured"=>false, "id"=>24}, {"avatar_url"=>"https://kitmanlabs.com/avatars/athletes/1.jpg", "squad_id"=>2, "country"=>"Falkland Islands (Malvinas)", "last_played"=>"Thu Mar 05 2015 19:46:18 GMT+0000 (UTC)", "name"=>"Hillary Wiggins", "position"=>"full-back", "is_injured"=>false, "id"=>1}]
      get :index
      expect(assigns(:selected_squad)).to  eq(expected_squad)
    end

    it "creates a squad_id" do
      get :index
      expect(assigns(:squad_id)).to eq(10)
    end
  end
end
