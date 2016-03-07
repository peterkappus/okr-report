# OKR Report Site

A simple Ruby stasis site to parse GDS Goals from a CSV into a nice looking format.

## Getting Startged
  1. Install stasis ```gem install stasis```
  2. Export a 'data.csv' file with 'group_name', 'group_objective', and 'group_key_result' columns
  3. Run ```stasis -d``` to enter development mode.
  4. Tweak code.
  5. browse files generated in public/
  6. Publish public/* to some host


  ## S3 Deployment
  ```s3cmd sync public/ s3://<BUCKET_NAME> -P --rexclude=.git* --delete-removed --rexclude=.DS* --rexclude=.sass*```
