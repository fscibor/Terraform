#Login to your AWS account via aws configure command. Script below is going to create a user for you with appropriate permission set for the project.
# Variables
$UserName = "RegionalProductionProject"

# Step 1: Create the IAM user
aws iam create-user --user-name $UserName

# Step 2: Attach AmazonDynamoDBFullAccess policy to the user
aws iam attach-user-policy --user-name RegionalProductionProject --policy-arn arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess

# Step 3: Attach AmazonS3FullAccess policy to the user
aws iam attach-user-policy --user-name RegionalProductionProject --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess

# Step 4: Attach AmazonEC2FullAccess policy to the user
aws iam attach-user-policy --user-name RegionalProductionProject --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess

# Step 5: Create access keys for programmatic access
$AccessKeys = aws iam create-access-key --user-name $UserName

# Output the access keys for the user
$AccessKeys | ConvertFrom-Json | Select-Object -ExpandProperty AccessKey | Format-List

Write-Host "User $UserName has been created with full access to Amazon DynamoDB, EC2 and S3."
