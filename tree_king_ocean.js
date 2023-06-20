// This program is intended to help break down the barriers preventing people from accessing 
// various resources, education, and opportunities.

function identifyBarriers(){
	// Identify the potential barriers faced by the population
	var barriers = ["lack of education", "limited access to resources", "discrimination", "social stigma", "poverty"]
	return barriers;
}

function analyzeBarriers(barriers){
	// Analyze the potential barriers faced by the population
	var analysis = {};
	for(i=0; i<barriers.length; i++){
		// Create a counter for each barrier
		analysis[barriers[i]] = 0;
		// Count the number of people affected by each barrier
		for(j=0; j<people.length; j++){
			if(people[j].barrier == barriers[i]){
				analysis[barriers[i]]++;
			}
		}
	}
	return analysis;
}

function createBarrierRemovalPrograms(analysis){
	// Create programs focused on removing each identified barrier
	var programs = [];
	for(i=0; i<analysis.length; i++){
		var program = {};
		program.barrier = analysis[i];
		switch(analysis[i]){
			case "lack of education":
				// Create educational programs
				program.name = "Educational Outreach Program";
				program.description = "This program will provide free education to community members in need.";
				program.actionItems = ["Identify resources needed to provide free education", "Develop curriculum for the program", "Create a list of potential volunteers and mentors", "Secure funding for program"
				];
				break;
			case "limited access to resources":
				// Create programs that focus on providing access to resources
				program.name = "Resource Outreach Program";
				program.description = "This program will provide access to essential resources to community members in need.";
				program.actionItems = ["Identify resources needed to provide access to resources", "Develop plan for distributing resources", "Create a list of potential volunteers and mentors", "Secure funding for program"];
				break;
			case "discrimination":
				// Create programs that focus on tackling discrimination
				program.name = "Anti-Discrimination Program";
				program.description = "This program will work to eliminate discrimination in the community.";
				program.actionItems = ["Identify sources of discrimination in the community", "Develop program to increase awareness of discrimination", "Create a list of potential volunteers and mentors", "Secure funding for program"];
				break;
			case "social stigma":
				// Create programs that focus on removing social stigmas
				program.name = "Stigma Eradication Program";
				program.description = "This program will work to eliminate negative stigmas in the community.";
				program.actionItems = ["Identify sources of social stigma in the community", "Develop program to increase awareness of social stigmas", "Create a list of potential volunteers and mentors", "Secure funding for program"];
				break;
			case "poverty":
				// Create programs that focus on alleviating poverty
				program.name = "Poverty Alleviation Program";
				program.description = "This program will provide resources to those in need to help alleviate poverty.";
				program.actionItems = ["Identify resources needed to provide relief from poverty", "Develop plan for distributing resources", "Create a list of potential volunteers and mentors", "Secure funding for program"];
				break;
		}
		programs.push(program);
	}
	return programs;
}

function recruitVolunteers(programs){
	// Recruit volunteers for each of the programs
	// Create a list of potential volunteers
	var volunteers = [];
	for(i=0; i<people.length; i++){
		if(people[i].volunteer == true){
			volunteers.push(people[i]);
			// Create a list of the volunteers' skills and abilities
			people[i].skills = ["programming", "writing", "speaking", "teaching", "mentoring"];
			people[i].availablePrograms = [];
			for(j=0; j<programs.length; j++){
				// Match volunteers to programs based on their skills
				for(k=0; k<people[i].skills.length; k++){
					if(programs[j].actionItems.includes(people[i].skills[k])){
						people[i].availablePrograms.push(programs[j]);
					}
				}
			}
		}
	}
	return volunteers;
}

function streamlineProcesses(){
	// Streamline processes to make it easier for people to access resources
	// Create a database of available resources and how to access them
	var resourceDatabase = {};
	for(i=0; i<resources.length; i++){
		// Create entry for each resource in the database
		resourceDatabase[resources[i]] = {};
		// Provide instructions on how to access each resource
		resourceDatabase[resources[i]].instructions = "To access " + resources[i] + ", please complete the following steps:";
		// List the steps needed to access each resource
		for(j=0; j<resources[i].steps.length; j++){
			resourceDatabase[resources[i]].instructions += "\n" + (j+1) + ": " + resources[i].steps[j];
		}
		// Provide contact information for each resource
		resourceDatabase[resources[i]].contactInfo = {
			name: resources[i].contactName,
			number: resources[i].contactNumber,
			email: resources[i].contactEmail
		};
	}
	return resourceDatabase;
}

function promotePrograms(programs, volunteers){
	// Promote the created programs and recruit volunteers
	// Create posters to post around the community
	var posters = [];
	for(i=0; i<programs.length; i++){
		var poster = {};
		poster.program = programs[i];
		poster.message = "We need your help to make a difference! Join the " + programs[i].name + " and help break down the barriers facing our community.";
		// Add a list of volunteer opportunities
		poster.volunteerOpportunities = [];
		for(j=0; j<volunteers.length; j++){
			if(volunteers[j].availablePrograms.includes(programs[i])){
				poster.volunteerOpportunities.push(volunteers[j]);
			}
		}
		posters.push(poster);
	}
	return posters;
}

// Main function
function BreakingBarriers(){
	// Identify the barriers facing the population
	var barriers = identifyBarriers();
	// Analyze the barriers
	var analysis = analyzeBarriers(barriers);
	// Create programs focusing on removing each identified barrier
	var programs = createBarrierRemovalPrograms(analysis);
	// Recruit volunteers for each program
	var volunteers = recruitVolunteers(programs);
	// Streamline processes to make it easier for people to access resources
	var resourceDatabase = streamlineProcesses();
	// Promote the programs and recruit volunteers
	var posters = promotePrograms(programs, volunteers);
}