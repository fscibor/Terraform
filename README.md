Following Project is designed to work with Terraform Local Modules.  The purpose is to create:
- EC2 aws instance like t2.micro, 
- dynamoDB table 
- aws s3 bucket
Child Modules are describing general design and Root Modules are dedicated to provisioning resources in specifc region.

In order to make everything secure, I made Security folder which contains create_iam_user.ps1 script. Following script is responsible for:
# Step 1: Create the IAM user
# Step 2: Attach AmazonDynamoDBFullAccess policy to the user
# Step 3: Attach AmazonS3FullAccess policy to the user
# Step 4: Attach AmazonEC2FullAccess policy to the user
# Step 5: Create access keys for programmatic access
# Output the access keys for the user

Based on this account you can create all of the resources instead of working with root. Use aws configure command in order to switch to access key provided by the script.
