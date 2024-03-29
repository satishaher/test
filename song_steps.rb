def enter_song song

  fill_in "song[artist]", :with => song[:artist]
  fill_in "song[name]", :with => song[:name]
  fill_in "song[gener]", :with => song[:gener]
  page.should have_button("Create Song")

end

Given /^I am on page newsong$/ do
  visit '/songs/new'
end

When /^I am entering valide song$/ do
  enter_song FactoryGirl.build(:song)
  click_button "Create Song"
end

Then /^I see a message song added to list$/ do
 page.should have_content("Song was successfully created")
end

Then /^I am entering invalide song$/ do
  enter_song FactoryGirl.build(:invalide_song)
 click_button "Create Song"
end

Then /^I am not entering song "(.*?)"$/ do |arg|
  enter_song FactoryGirl.build(:song ,arg=>nil)
 # click_button "Create Song"
end

Then /^I see a message song is not valid$/ do
 page.should have_content("Name is too long")
end

Then /^I Press "(.*?)" Button$/ do |arg|
 click_button(arg)
end

Then /^I see a message First name should not be blank$/ do 
 page.should have_content("Name First name should not be blank")
end

Then /^I am entering song "(.*?)" as "(.*?)"$/ do |arg,arg2|
  enter_song FactoryGirl.build(:song ,arg=>arg2)
end

