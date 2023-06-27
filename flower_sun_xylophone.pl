#!/usr/bin/perl

# Breaking Barriers - A Perl program for enabling and promoting access to educational resources

# open file handler to read the resource list
open(FILE, "<resources.txt");

# This array will store our list of resources 
my @resources; 

# Read in the file contents to the array
while(<FILE>){
    chop $_; 
    push(@resources,$_);
}

# Set a counter for each resource
my $resource_count = 0; 

# Loop through each resource in the array
foreach my $resource (@resources){
    
    # Print out each resource to the console
    print $resource . "\n"; 
    
    # Increment the resource count
    $resource_count++;
}

# Print out the number of resources being accessed
print "Number of accessed resources: " . $resource_count . "\n";

# Close the file handler
close(FILE);

# Create a method for sharing resources
sub share_resource {

	# Get the resource to share
	my $resource_to_share = shift;

	# Get the list of people to share the resource with
	my $list_of_recipients = shift;

	# Create an email message
	my $email_message = "Hello,\nWe are pleased to share the following educational resource with you:\n$resource_to_share\n\nThank you for your time,\nThe Breaking Barriers Team\n";

	# Send the email to the list of recipients
	foreach my $recipient (@$list_of_recipients){
		open(MAIL, "|/usr/sbin/sendmail -t");
			
			print MAIL "To: $recipient\n";
			print MAIL "From: Breaking_Barriers\n";
			print MAIL "Subject: Your Educational Resource\n";
			print MAIL "\n";
			print MAIL $email_message;

		close(MAIL);	
	}
}

# Create a method that allows users to upload resources
sub upload_resource {

	# Get the resource to upload
	my $resource_to_upload = shift;

	# Store the resource in the resources array
	push(@resources, $resource_to_upload);

	# Open the file handler to write the resources to a file 
	open(FILEHANDLE, ">resources.txt");

	# Loop through the resources array to write each resource to the file
	foreach my $resource (@resources){
		print FILEHANDLE "$resource\n"; 
	}

	close(FILEHANDLE);
}

# Prompt the user to enter a resource to upload
print "Please enter the resource you would like to upload:\n"; 

# Store the user input 
my $resource_to_upload = <STDIN>;
chomp($resource_to_upload);

# Call the upload_resource method to store the resource
upload_resource($resource_to_upload);

# Prompt the user to enter a list of people to share the resource with
print "Please enter a list of people to share the resource with (separated by commas):\n";

# Store the user input
my $resource_share_list = <STDIN>;
chomp($resource_share_list);

# Split the user input at the commas
my @list_of_recipients = split /\s*,\s*/, $resource_share_list;

# Call the share_resource method to share the resource
share_resource($resource_to_upload, \@list_of_recipients);