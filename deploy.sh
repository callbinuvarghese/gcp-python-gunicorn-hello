#!/bin/sh
set -x

gcloud run deploy svc-pyhelo \
  --image us-east4-docker.pkg.dev/PROJECT_ID/dockerepo/pyhelo:latest \
  --platform managed \
  --region us-east1 \
  --allow-unauthenticated \
  --max-instances=1 \
  --memory 2Gi 
