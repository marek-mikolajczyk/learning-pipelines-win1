# learning-pipelines-win1

# CI/CD remarks

making 1st stage manual, then second on_success doesn't work as expected - 2nd stage just runs.
But manual might be good to use with last stage 'deploy to prod'.
This works, and graph nicely shows depencencies
```
say_success:
  stage: build
  tags: [powershell]  
  needs: ["say_date","say_hostname"]
  script: ./scripts/date.ps1
```
# CI/CD errors
```
ERROR: Job failed (system failure): prepare environment: failed to start process: exec: "pwsh": executable file not found in %PATH%. Check https://docs.gitlab.com/runner/shells/index.html#shell-profile-loading for more information
```