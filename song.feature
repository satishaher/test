Feature: Song features
  In order to add fields in songs
  user should go to page
  

Background: 
	Given I am on page newsong 

    Scenario: User Entring valid song  
	#Given PENDING: we need client input
	When I am entering valide song
	Then I see a message song added to list

    Scenario: User Entring invalide song  
	When I am entering invalide song
	Then I see a message song is not valid

    Scenario: User not entering song name
	When I am not entering song "name"
	Then I Press "Create" Button
	Then I see a message First name should not be blank

    Scenario: User entering only song name
	When I am entering song "name" as "abcd"
	Then I Press "Create" Button
	Then I see a message song added to list
 
