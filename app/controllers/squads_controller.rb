class SquadsController < ApplicationController

  def index
    file = File.read('data/rugby_athletes.json')
    file_data = JSON.parse file

    @athletes = file_data['athletes']
    @squad_id = next_squad_id file_data['squads']
    @selected_squad = select_squad @athletes

    @athletes = @athletes.sort_by {|a| a['is_injured'] ? 1 : 0}
  end

  private

  def select_squad athletes
    # reject injured athletes
    athletes_not_injured = athletes.reject {|a| a['is_injured'] == true}

    # define valid rugby squad
    valid_squad = { 'prop' => 2,
                    'hooker' => 1,
                    'lock' => 2,
                    'flanker' => 2,
                    'number-eight' => 1,
                    'scrum-half' => 1,
                    'out-half' => 1,
                    'centre' => 2,
                    'winger' => 2,
                    'full-back' => 1 }

    # select squad from uninjured players based on the valid squad criteria
    selected_squad = []
    valid_squad.each do |position, number|
      selected_squad += athletes_not_injured.select {|a| a['position'] == position }.first(number)
    end

    return selected_squad
  end

  def next_squad_id squads
    squad_id = 0
    return squads.map {|s| s['id']}.max + 1
  end
end
