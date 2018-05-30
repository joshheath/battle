feature 'players can enter names' do
  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content 'Josh vs Solomon'
  end
end
