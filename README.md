# DevOps Galactic Mission: Operation Terraform

Space Engineers - I am reporting that an attempt was made to complete the entire task, but failed to complete it in its entirety
the space beacon has gone out in outer space and I have no signal from it.
Below is a description of what worked and what didn't.
In addition, I would like to point out that as an independent Space Engineer, I missed a team of experienced Space Engineers
to consult on mission-critical steps, and I was unable to consult with Galaxy Mission Control in Houston, which I did for the first time.

Steps taken:
1. Registering an account with AWS Galaxy
2. Creating a VPC together with the EKS cluster
    Here I encountered the first space problem - single subnet. In the first assumption, I created 2 networks -
    one private and one public. However, when starting the cluster, I kept getting a requirements error
    EKS to have networks in separate avalibility zones. In retrospect, I know I wasted a lot of time here
    looking for a mistake in the need to implement a single public network. I managed to do it by creating 2 private ones
    and one public network.
3. Using the VPC modules provided by Terraform, we managed to implement the necessary components, such as
    security groups, IAM roles etc. which led to getting space kubeconfig.
4. The next step was to make a space application that was supposed to send a welcome signal to other inhabitants
    galaxies. I made an application that emitted a signal, checked it locally on the ship, received a greeting from Squadron,
    then I packed it in a space container and sent it to the galaxy container hub.
5. The next step was to prepare a space chart. This, too, was done - at least that's what they indicated
    all the local data that flowed down to me. However, the problem occurred while deploying the chart to the galaxy cluster.
    My systems constantly indicate the lack of one component necessary to dock the chart in the galaxy cluster.
    Unfortunately, due to the approaching space storm, I couldn't work on deploying the greyhound to the galaxy cluster any longer.
    I regret to inform you that the mission ended in failure, but thank you for your trust.


Here is the cosmic repo: https://github.com/monikagoat/Space-beacon.git

Space Engineers - To start working on "Operation Terraform" you need to make sure you are equipped with:
1. AWS galaxy account
2. Installed Terraform on your local machines

Steps you need to take to run the application:
1. Download the repo: https://github.com/monikagoat/Space-beacon.git
2. In the "terraform" folder execute "terraform init" command - to download all necessary plugins.
3. Then use the "terraform apply" command - this will build a galaxy cluster - the cluster has been temporarily destroyed
    due to infrastructure costs, so everyone has to run it themselves.
4. After creating the cluster, use the command: "kubectl get pods" - which will show the pod running with the application.
5. After making sure you see the pod, you can connect to the application on port 80. The application maps the http request GET "\greeting".
6. Due to the problems encountered, points 4 and 5 have not been fully tested.

Good luck Space Engineer!

Advices for future Engineers:
- better & easier & more effective is working in a team than in one person specially a junior Space Engineer
- EKS Galaxy Cluster has the possibility of extensive expansion, you can add more applications in different languages and containerize them
- In addition, you can consider adding a database that would store information in a space cloud
- A UI could be added to the application to make it easier to send http requests.


May the force of Space DevOps be with you!




