

aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 194722410770.dkr.ecr.ap-south-1.amazonaws.com
docker pull 194722410770.dkr.ecr.ap-south-1.amazonaws.com/ilmcamp/openedx-v18-prod:latest
tutor config save --set LANGUAGE_CODE="uz"
tutor local launch
tutor local do settheme ilmcamp-openedx-theme
