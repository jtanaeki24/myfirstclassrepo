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
  <li>Navigate to <i>pom.yml</i> file in root directory.</li>
  <li>Change <i>java.version</i> to <i>8</i>.</li>
</ol>
