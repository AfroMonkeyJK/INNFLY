Scenario: Sort by in default position
	Given the user is in the main page
	When the "sort by" field is shown
	Then the position is set as by "Default"
	And the arrow icon is shown in "down" direction

Scenario Outline: Sort by <dropdownOption> item list 
	Given the user is in the main page 
	And the sort by field is shown in default position 
	When the user selects <dropdownOption> option in “Sort by” dropdown 
	Then the item list changes the order to <dropdownOption> 
	And the arrow icon is shown in “down” direction 
	Examples: 
		| dropdownOption 		| 
		| "Product Name”  		| 
		| "Price”           	| 
		| "New Arrivals”    	| 
		| "by Position"			|

 

Scenario Outline: Sort by <dropdownOption> order change 
	Given the user is in the main page 
	And the "sort by" field is shown in default position 
	When the user selects <dropdownOption> option in "sort by" dropdown 
	And the user clicks arrow direction 
	Then the item list changes the order to the last positon item 
	And the arrow icon is shown in "up" direction 
	Examples: 
		| dropdownOption 		| 
		| "Product Name”  		| 
		| "Price”           	| 
		| "New Arrivals”    	| 
		| "by Position"			|

Scenario: Changing from 1 option to another with order inverted
	Given the user sets the sort by field as <dropdownOption> inverted
	When the user selects another <dropdownOptionChanged> option
	Then the item list changes the order to <dropdownOption> in inverted position
	And the arrow icon is shown in "down" direction
	Examples: 
		| dropdownOption 		| dropdownOptionChanged |
		| "Product Name”  		| "by Position"			|
		| "New Arrivals”    	| "Price”           	| 
