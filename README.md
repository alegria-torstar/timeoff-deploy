# timeoff-deploy

For deploying the application, I created a job that is polling any change in the main branch every five minutes. I preferred to use this approach as creating a webhook requires you to be an admin of the repo. 

<img width="1218" alt="Screen Shot 2023-01-02 at 20 42 21" src="https://user-images.githubusercontent.com/111317556/210294016-847af2af-bced-42ac-8d43-c7d8acc863e8.png">

Every five minutes the job checks if the branch suffered from any modification and in the end it triggers a job that gets every instance inside the asg, ssh's into each one and runs the necessary commands to update the application. 

<img width="1052" alt="Screen Shot 2023-01-02 at 20 44 05" src="https://user-images.githubusercontent.com/111317556/210294463-c6c75f2b-1c3b-4c30-81bf-33a33d948aff.png">
