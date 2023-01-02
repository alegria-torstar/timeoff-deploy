 #!/bin/bash

aws ec2 describe-instances --filter Name=tag:Name,Values=timeoff  --region us-east-1