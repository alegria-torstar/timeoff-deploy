 #!/bin/bash

aws ec2 describe-instances --filter Name=tag:Name,Values=ADS-prod-ads --query "Reservations[*].Instances[*].PrivateIpAddress" --output=json --region us-east-1