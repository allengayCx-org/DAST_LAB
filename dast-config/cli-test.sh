docker run -d -e CX_APIKEY=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwNzExMDZkNS0xM2FlLTRlYTgtYTcwOC1kYTUwZmQ3ZTRlNWIifQ.eyJpYXQiOjE3MDU0MjM1NDUsImp0aSI6IjRiNGNlN2RmLTFhOTYtNDFjNy1iZjUwLTQyYTZiNjFhYTk3ZSIsImlzcyI6Imh0dHBzOi8vaWFtLmNoZWNrbWFyeC5uZXQvYXV0aC9yZWFsbXMvY3hfYXN0X3NlX2FsbGVuZ2F5X2RlbW9fbmEiLCJhdWQiOiJodHRwczovL2lhbS5jaGVja21hcngubmV0L2F1dGgvcmVhbG1zL2N4X2FzdF9zZV9hbGxlbmdheV9kZW1vX25hIiwic3ViIjoiZWEzNzBmNzYtZDVhMS00MTI0LWIxZjEtYmRjMjBiNmYzZDViIiwidHlwIjoiT2ZmbGluZSIsImF6cCI6ImFzdC1hcHAiLCJzZXNzaW9uX3N0YXRlIjoiMWU0ZTE5ZTAtYzQ1NS00ZTE5LTk0M2MtYWQ1YTM1NWEzYTVkIiwic2NvcGUiOiIgb2ZmbGluZV9hY2Nlc3MiLCJzaWQiOiIxZTRlMTllMC1jNDU1LTRlMTktOTQzYy1hZDVhMzU1YTNhNWQifQ.1cn9s9lqhC3kMpFLSuVPMU6Pv-baIH2UBlkx1qVh0EI \
  -v $(pwd):/home/ubuntu checkmarx/dast:latest web  \
  --base-url=https://ast.checkmarx.net \
  --environment-id=26a65bac-8ed4-48bc-a4ab-5f01c1ec718a \
  --config=/home/ubuntu/test_config.yaml \
  --output=/home/ubuntu/output \
  --timeout=86400 \
  --update-interval=30 \
  --jvm-properties=-Xmx3G \
  --log-level=debug \
  --verbose \
  --retry=3 \
  --retry-delay=20 2>&1 | tee DAST_dockerimage.log


docker run -e CX_APIKEY=eyJhbGciOiJIUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICIwNzExMDZkNS0xM2FlLTRlYTgtYTcwOC1kYTUwZmQ3ZTRlNWIifQ.eyJpYXQiOjE3MDU0MjM1NDUsImp0aSI6IjRiNGNlN2RmLTFhOTYtNDFjNy1iZjUwLTQyYTZiNjFhYTk3ZSIsImlzcyI6Imh0dHBzOi8vaWFtLmNoZWNrbWFyeC5uZXQvYXV0aC9yZWFsbXMvY3hfYXN0X3NlX2FsbGVuZ2F5X2RlbW9fbmEiLCJhdWQiOiJodHRwczovL2lhbS5jaGVja21hcngubmV0L2F1dGgvcmVhbG1zL2N4X2FzdF9zZV9hbGxlbmdheV9kZW1vX25hIiwic3ViIjoiZWEzNzBmNzYtZDVhMS00MTI0LWIxZjEtYmRjMjBiNmYzZDViIiwidHlwIjoiT2ZmbGluZSIsImF6cCI6ImFzdC1hcHAiLCJzZXNzaW9uX3N0YXRlIjoiMWU0ZTE5ZTAtYzQ1NS00ZTE5LTk0M2MtYWQ1YTM1NWEzYTVkIiwic2NvcGUiOiIgb2ZmbGluZV9hY2Nlc3MiLCJzaWQiOiIxZTRlMTllMC1jNDU1LTRlMTktOTQzYy1hZDVhMzU1YTNhNWQifQ.1cn9s9lqhC3kMpFLSuVPMU6Pv-baIH2UBlkx1qVh0EI \
  -v $(pwd):/demo checkmarx/dast:latest \
  web \
  --environment-id=26a65bac-8ed4-48bc-a4ab-5f01c1ec718a \
  --config=/demo/test_config.yaml \
  --base-url=https://ast.checkmarx.net/  \
  --output=/demo/test_output \
  --timeout=7200 \
  --update-interval=10 \
  --jvm-properties=-Xmx3G \
  --log-level=info \
  --verbose \
  --retry=3 \
  --retry-delay=20 \
  --fail-on HIGH \