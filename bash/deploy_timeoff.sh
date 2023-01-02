 #!/bin/bash

aws s3 cp . s3://luis-pem-files/Operations-Luis.pem
chmod 600 Operations-Luis.pem

for ip in $(aws ec2 describe-instances --filter Name=tag:Name,Values=timeoff  --query "Reservations[*].Instances[*].PrivateIpAddress" --output=text --region us-east-1) ; 
    ssh -i Operations-Luis.pem ec2-user@ip << EOF
git clone https://github.com/timeoff-management/timeoff-management-application.git timeoff-management
cd timeoff-managemenet
npm install 
npm run-script db-update
npm start
EOF
done
