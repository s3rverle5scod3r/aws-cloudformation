@echo off
Rem This script runs the sam deploy command within the main script.
Rem This prevents the script automatically closing, since 'sam deploy' produces a return code, which ends the executuon.

sam deploy --template-file auto-scaling-main.yml --stack-name dev-auto-scaling-main-stack -- region eu-west-2 --s3-bucket sam-deploy --capabilities CAPABILITY_NAMED_IAM --no-fail-on-empty-changeset --parameter-overrides ParameterKey=Environment,ParameterValue=dev ParameterKey=Version,ParameterValue=%1 > deploy_output.txt