# custom-iam-policy-to-manage-instance-based-on-enviornment

Custom IAM policy designed for IAM-user in AWS console where the user's are restricted based on the tags.

Hi this is a custom IAM policy to manage EC2 instance based on the enviornmenmt. Say for example I"m working on project named "Uber" and there are 2 users named "Uber-dev" to manage the development enviornment and the other named "Uber-prod" to manage the production enviornment. I've used two ec2-instance for dev and prod users to manage and created a custom IAM-policy to limit the usersonly to perform stop/start action only
