@echo off
rem This script will automatically deploy the stack in a prod environment: use this for a feature branch.
rem Parameters:
rem %1: Version (String) : The major, minor and subminor version of this deployment.
rem Execute usage: 'deploy_to_prod_stack.bat %1'
rem Refer to GitLab/GitHub environment variables on CI configuration for current version.

rem Change directory to root.
cd..

echo Deploying..
cmd /C call scripts/sam_command_prod.bat %1
echo Deployment completed.

rem Change directory back to deploy for future deployments.
cd deploy

echo Script completed. Last updated %time%
pause