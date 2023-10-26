![image](https://github.com/jtanaeki24/myfirstclassrepo/assets/141356601/fd8de176-6be9-4b24-8134-d6dc7daead80)

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

# Starting EC2 Instance Connect Endpoint
<ol>
  <li>Select the instance and click <i>Connect</i>.</li>
  <li>Make sure the <i>EC2 Instance Connect</i> tab is selected.</li>
  <li>Select <i>Connect using EC2 Instance Connect Endpoint</i>.</li>
  <li>Scrolll toward the bottom and click inside the box under <i>EC2 Instance Connect Endpoint</i>.</li>
  <li>Click <i>Create endpoint</i></li>
  <li>If there's no option to click <i>Create endpoint</i>, then go to the top of the page and search for the <i>VPC</i> service. Click <i>Endpoints</i> on the left pane. Click <i>Create endpoint</i>.</li>
  <li>Name the endpoint.</li>
  <li>Under <i>Service category</i>, select <i>EC2 Instance Connect Endpoint</i>.</li>
  <li>Under <i>VPC</i>, select the VPC that was created in the <i>CodeDeployStack</i>.</li>
  <li>Under <i>Security groups</i>, select the security group labeled <i>CodeDeployStack-WebappSecurityGroup</i>.</li>
  <li>Under <i>Subnet</i>, select the subnet labeled <i>Public Subnet (AZ2)</i>.</li>
  <li>Click <i>Create endpoint</i>.</li>
  <li>Wait until the <i>Status</i> is no longer <i>Pending</i> and it says <i>Available</i>.</li>
  <li>Go back to where you connect to <i>EC2 Instance Connect Endpoint</i> and select the newly created endpoint.</li>
  <li>Click <i>Connect</i>.</li>
</ol>
