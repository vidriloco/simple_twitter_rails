Before('@already_logged_in') do
  visit path_to("the welcome page")
  with_scope("#session") do
    click_link("login")
  end
  with_scope("#signin_form") do
    fill_in("username_or_email", :with => "twitxchange")
  end
  with_scope("#signin_form") do
     fill_in("session[password]", :with => "xchange")
  end
  with_scope("#signin_form") do
    click_button("Sign in")
  end
end