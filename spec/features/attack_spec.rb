feature 'attack' do
  scenario 'attack and confirm' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Josh attacked Solomon'
  end
end

feature 'attacking' do
  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).not_to have_content 'Solomon: 60HP'
    expect(page).to have_content 'Solomon: 50HP'
  end
end
