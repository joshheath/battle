feature 'attack' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Josh attacked Solomon'
  end
end
