# Init

Create an amazon account. Create a user named "init" with IAMFullAccess and AmazonS3FullAccess permissions.

This user is just used for initializing the setup.

Create an access key for user "init" and setup your [terraform](https://www.terraform.io/intro/getting-started/install.html).

First step is applying "iam". "iam" is an account wdie setup. [iam/README.md](/kavehmz/terraform/blob/master/iam/README.md)

Each section will have its own state as a best practice, so does "iam".