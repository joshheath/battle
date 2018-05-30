feature 'players can enter names' do
  scenario 'submit names' do
    visit('/')
    fill_in :player_1_name, with: 'Josh'
    fill_in :player_2_name, with: 'Solomon'
    click_button 'Submit'
    expect(page).to have_content 'Josh vs Solomon'
  end
end
