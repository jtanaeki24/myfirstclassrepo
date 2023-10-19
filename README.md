# Documentation to Deploy using GitHub Action and CloudFormation
<ol>
  <li>Move <i>.gtibhub</i>, <i>aws</i>, <i>cloudformation</i> folders and <i>appspec.yml</i> file to repository.</li>
  <li>Navigate to <i>deploy.yml</i> file at <i>.github/workflows/deploy.yml</i>.</li>
  <li>Delete <i>spring-boot-hello-world-example</i> from <i>applicationfolder</i>. Change:</li>

    env:
      applicationfolder: spring-boot-hello-world-example

  to:

    env:
      applicationfolder:
  <li>Go to the <i>Upload Artifact to s3</i> step under the <i>build</i> job.</li>
  <li>Change the <i>working-directory</i> value to <i>/home/runner/work/myfirstclassrepo/myfirstclassrepo/target</i>:</li>

    name: Upload Artifact to s3
    working-directory: /home/runner/work/myfirstclassrepo/myfirstclassrepo/target
  <li>Navigate to <i>pom.yml</i> file in root directory.</li>
  <li>Change <i>java.version</i> to <i>8</i>.</li>
</ol>
