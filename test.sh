#/!bin/sh
set -x
export DATAPROFILE_SERVICE_URL=$(gcloud run services describe svc-pyhelo --platform managed --region us-east1 --format="value(status.address.url)")
curl -X GET -H "Authorization: bearer $(gcloud auth print-identity-token)" \
  -H "Content-Type: application/json" \
  $DATAPROFILE_SERVICE_URL