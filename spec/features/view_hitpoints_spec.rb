feature "View hitpoints" do
  scenario "Sign up both players and display hitpoints" do
    sign_in_and_play()
    expect(page).to have_text("Joe: 100HP")
  end

  scenario "Sign up both players and display hitpoints" do
    sign_in_and_play()
    expect(page).to have_text("Will: 100HP")
  end
end
