 #!/bin/bash



for ip in $(aws ec2 describe-instances --filter Name=tag:Name,Values=timeoff  --query "Reservations[*].Instances[*].PrivateIpAddress" --output=text --region us-east-1) ; 
    do echo "Ip is: $ip" ; 
done
