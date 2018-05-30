def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Josh'
  fill_in :player_2_name, with: 'Solomon'
  click_button 'Submit'
end
