# Pretend Deploy Process

This is a pretend deploy process to provide some opportunities for automation.

Application images are built by an upstream service. The downstream deploy
service uses these manifest files to determine what should be in each
environment:
- `manifests/staging.yaml`
- `manifests/production.yaml`

To release an application we must:
- read the image tag from the staging file
- update the image tag in the production file
- commit that to a new git branch
- push the branch to GitHub and open a PR

The PR will be manually reviewed and merged. The deploy service will be notified
via a webhook and release the application.
