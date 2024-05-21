# The Cloud Resume Project!
\- [The Cloud Resume Project!](#the-cloud-resume-project)
- [Using Terraform to create the git repo.](#using-terraform-to-create-the-git-repo)
      - [Creating the personal access token](#creating-the-personal-access-token)
      - [Creating the .gitignore file](#creating-the-gitignore-file)
      - [Creating the variable for the Personal access token](#creating-the-variable-for-the-personal-access-token)
      - [Creating the infrastructure](#creating-the-infrastructure)
      - [Deployment](#deployment)
      - [Git Clone](#git-clone)
- [HTML](#html)
- [resources](#resources)



# Using Terraform to create the git repo.

On this project I wanted to utilise infrastructure as code (IAC) as much as possible. Therefore to create this repo I used Terraform.There were a few steps:

* Creating the personal access token
* Creating the .gitignore file
* Creating the variable for the Personal access token
* Creating the infrastructure
* Deployment
* Git clone


#### Creating the personal access token

Firstly, I went to `  Settings > Developer Settings > Personal access token`. Once I had navigated to the correct area I selected `repo` and also `delete` in order to have the correct permissions. I also chose `60 days` for the token to be valid for.  

![alt text](<images/Screenshot 2024-05-21 at 14.30.01.png>)


![alt text](<Screenshot 2024-05-21 at 14.30.25.png>)

Now that that had been created and saved I needed to save the token code somewhere safe as you only have one opportunity to view it.

#### Creating the .gitignore file

Now, this was not needed at this stage but I like to get into the habit of always making one so I never forget. This is needed once I clone the repo and use Terraform further.

####  Creating the variable for the Personal access token

Next I created a `variable.tf` in which the personal access token was stored. This file goes into the `.gitignore` because it contains sensitive information. The variable was then used in the `github.tf` file.

![alt text](<images/Screenshot 2024-05-21 at 14.41.16.png>)


#### Creating the infrastructure

Next was to build the infrastructure:

![alt text](<images/Screenshot 2024-05-21 at 14.42.51.png>)

####  Deployment

To deploy the infrastructure I had to run the 3 famous Terraform commands: 
`terraform init` > `terraform plan` > `terraform apply` 

![alt text](<images/Screenshot 2024-05-21 at 14.49.40.png>)

<br>
Finally, my infrastructure had been deployed to Github:

<br>
![alt text](<images/Screenshot 2024-05-21 at 14.50.41.png>)


#### Git Clone

Lastly, to complete this task, I had to do a git clone on the repo within my terminal, so that I could continue the project. Once done, I copied over the files I wanted within the folders and pushed to github.


# HTML

Next I used a Html template called `miniport` to create my resume. As the focus of this project is not html/css many youtube videos and articles recommended using [html5up](https://html5up.net) for templates.


# resources
https://www.linkedin.com/pulse/github-repository-create-terraform-anish-kumar/
<br>
https://www.youtube.com/watch?v=NNKzYhvqq5w
<br>
https://html5up.net
<br>
https://cloudresumechallenge.dev
<br>
