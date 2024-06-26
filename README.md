# The Cloud Resume Project
- [The Cloud Resume Project](#the-cloud-resume-project)
- [What is the Cloud Resume Project](#what-is-the-cloud-resume-project)
- [How do I intend to build my cloud resume](#how-do-i-intend-to-build-my-cloud-resume)
  - [Getting Started](#getting-started)
  - [Using Terraform to create the git repo.](#using-terraform-to-create-the-git-repo)
      - [Creating the personal access token](#creating-the-personal-access-token)
      - [Creating the variable for the Personal access token](#creating-the-variable-for-the-personal-access-token)
      - [Creating the infrastructure](#creating-the-infrastructure)
      - [Creating the .gitignore file](#creating-the-gitignore-file)
- [HTML](#html)
- [AWS Budgets](#aws-budgets)
- [AWS IAM](#aws-iam)
- [Resources](#resources)



#  What is the Cloud Resume Project


# How do I intend to build my cloud resume

* Terraform
* Trello
* AWS
* GIT
* S3
* DNS

EXTRA:
* JENKINS

## Getting Started
First I set up the **Trello** board with all the first few tasks I could think of.


## Using Terraform to create the git repo.

On this project I wanted to utilise infrastructure as code (IAC) as much as possible. Therefore to create this repo I used Terraform.There were a few steps:

* Creating the personal access token
* Creating the variable for the Personal access token
* Creating the infrastructure
* Deployment
* Git clone
* Creating the .gitignore file


#### Creating the personal access token

Firstly, I went to `  Settings > Developer Settings > Personal access token`. Once I had navigated to the correct area I selected `repo` and also `delete` in order to have the correct permissions. I also chose `60 days` for the token to be valid for.  

![alt text](<images/Screenshot 2024-05-21 at 14.30.01.png>)


![alt text](<images/Screenshot 2024-05-21 at 14.30.25.png>)

Now that that had been created and saved I needed to save the token code somewhere safe as you only have one opportunity to view it.


####  Creating the variable for the Personal access token

Next I created a `variable.tf` in which the personal access token was stored. This file goes into the `.gitignore` because it contains sensitive information. The variable was then used in the [github.tf](https://github.com/Scarlett100/cloud_resume_challenge/blob/master/terraform_for_reference/github.tf) file.

![alt text](<images/Screenshot 2024-05-21 at 14.41.16.png>)


#### Creating the infrastructure

Next was to build the infrastructure:

![alt text](<images/Screenshot 2024-05-21 at 14.42.51.png>)


<h4 style="text-align: center;"><u>Deployment</u></h4>


To deploy the infrastructure I had to run the 3 famous Terraform commands: 
`terraform init` > `terraform plan` > `terraform apply` 

![alt text](<images/Screenshot 2024-05-21 at 14.49.40.png>)

<br>
Finally, my infrastructure had been deployed to Github and I have an empty repo with no files:
<br>

![alt text](<images/Screenshot 2024-05-21 at 14.50.41.png>)

<h4 style="text-align: center;"><u>Git Clone</u></h4>


Lastly, to complete this task, I had to do a git clone on the repo within my terminal, so that I could continue the project. Once done, I copied over the files I wanted within the folders and pushed to github.

#### Creating the .gitignore file

Now, that I have cloned, I want to have a .gitignore for when I state doing more things, I've also copied some of the terraform files for reference, so don't want them visible and risking being unsafe such as the file holding the variables.



# HTML

Next I used a Html template called `miniport` to use as the basis to create my resume. As the focus of this project is not html/css many youtube videos and articles recommended using [html5up](https://html5up.net) for templates.


![alt text](<images/Screenshot 2024-05-21 at 14.59.46.png>)



# AWS Budgets

Next was time to move to AWS. I had done a great deal of research into this part as I did not want to be presented.

So my next focus was to create AWS budgets to be alerted of billing thresholds. I didn't want to go over £10 at any one time. So I created a budget to reflect that.

I knew I wanted to create my s3 bucket through Terraform, so that tearing down would be easy and avoid charges, so that was going to be my next goal after setting up budgets.


I do need to make an IAM user but first, to apply the budget I would like, I need to be logged in as a **root user**.

To note I am working in the region of **Ireland** or **eu-west-1** due to reports of it being the cheapest in Europe, but when doing budgets it will be global.

At first, I decided to create a zero spend budget based on the fact that I wanted to know what was costing.

![alt text](<images/Screenshot 2024-05-28 at 13.18.41.png>)

I then ended up choosing to add another alert for when 80% of the threshold is reached.

![alt text](<images/Screenshot 2024-05-28 at 13.27.50.png>)

I then considered adding an action if threshold is reached, but decided to wait to see how long it would take to reach the threshold.

![alt text](<images/Screenshot 2024-05-28 at 13.26.55.png>)




# AWS IAM

  To work within best practices there are 5 steps to follow:

  * Enable Identity Center
  * Choose Identity Source
  * Create an admin Permission Set
  * Set Up Account For Identity Center Admin User
  * Sign into AWS Portal

First I went too `IAM Identity Center > Enable > Enable with AWS Organizations`


I ran into this blocker:
![alt text](<images/Screenshot 2024-05-28 at 14.00.58.png>)



# Resources
* [Create repo via Terraform](https://www.linkedin.com/pulse/github-repository-create-terraform-anish-kumar/)
<br>

* [Cloud Resume Challenge in AWS](https://www.youtube.com/watch?v=NNKzYhvqq5w)
  
<br>

* [html-templates](https://html5up.net)
<br>

* [Cloud Resume Offcial Site](https://cloudresumechallenge.dev)
<br>

* [Budgets](https://www.youtube.com/watch?v=WtokD2JD7K8)
  <br>
* [Setting up IAM](https://www.youtube.com/watch?v=_KhrGFV_Npw)




