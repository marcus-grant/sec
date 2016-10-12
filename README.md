# Sec
A time-tracking, provisioning, and reporting app to help you manage your most valuable asset

# Plan
Not happy with the current crop of apps out there I wrote my own time tracking service with a major focus on making it as extensible as possible through API's and open source code by default. The apps are portals into the service using its API's, so I leave most things open except the back-end code that runs this service for all its compatible devices, of which I hope there to be many.

# Data
Your time is split into one of many user-defined categories, for example cleaning, exercise, programming, work, etc. Since multi-tasking wastes more time than it gains, this app restricts active activities to one at a time. Each category can have any number of tasks or projects to help you plan your time with greater granularity and specificity. It is however possible to be active in a category without a specific task or project in mind, in fact if you engage one of these categories without specifying a specific task or project, it will just count time towards the category in general and not count any of its related projects and tasks.

### Initial Model
- Category
	- **Initial Version will only have categories**
	- Will use UserDefaults for persistence initially to simplify deployment
	- Properties:
		- **uID**: Used to index seperate categories in a list of categories
		- **name**: Name of the category
		- **description**: Description of the category
		- **isActive**: Boolean flag to indicate if this category is presently recording an activity
		- **timeStamps** :A seperate object 
 
