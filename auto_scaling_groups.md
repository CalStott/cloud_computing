
# Auto Scaling Groups and Load Balancing

## Overview
![Auto Scaling Groups Diagram](./images/ASG-LB-Caleb.png)

## How to Create an Auto Scaling Group (ASG)

### 1. Navigate to Auto Scaling Groups
From the **EC2 dashboard**, go to **Auto Scaling Groups**  
![ASG Navigation](./images/auto_scaling_groups/asg_navigation.png)

### 2. Create a New ASG  
Click **Create Auto Scaling group**  
![ASG Creation](./images/auto_scaling_groups/asg_creation.png)

### 3. Configure Basic Settings
- **Name:** Use a descriptive name (e.g. name-app-asg)
- **Launch Template:** Select an existing one or [create one](#how-to-create-a-launch-template)  
![ASG Naming and Launch Template](./images/auto_scaling_groups/asg_name_launch_template.png)

### 4. Configure Network
- **Availability Zones/Subnets:** Select zones (e.g. DevOpsStudent default 1a–1c)
- **Distribution:** Choose **Balanced best effort**  
![ASG Network Configuration](./images/auto_scaling_groups/asg_network_config.png)

### 5. Attach to a Load Balancer
- Select **Attach to a new load balancer**  
![Load Balancer Selection](./images/auto_scaling_groups/load_balance_selection.png)

- **Load Balancer Type:** Application Load Balancer (HTTP/HTTPS)
- **Name:** e.g. name-app-asg-lb
- **Scheme:** Internet-facing
- Ensure subnets/availability zones match previous selections
- **Target Group:** Create a new one and name it (e.g., name-app-asg-lb-tg)  
![Load Balancer Creation](./images/auto_scaling_groups/load_balancer_creation.png)

- **VPC Lattice Integration:** Select **No VPC Lattice service**
- **Health Checks:** Enable **Elastic Load Balancing health checks**  
![ASG Health Checks](./images/auto_scaling_groups/asg_health_checks.png)

### 6. Configure Scaling Policies
- **Desired Capacity**  
![ASG Desired Capacity](./images/auto_scaling_groups/asg_scaling_policy_desired.png)

- **Minimum/Maximum Capacity**
- **Policy Type:** Select **Target tracking scaling policy**
- **Name:** Use a descriptive name
- **Metric Type:** Choose a CloudWatch metric  
![ASG Scaling Policy](./images/auto_scaling_groups/asg_scaling_policy.png)

### 7. Additional Configurations
- **Instance Maintenance Policy:** Select **No policy**
- **Additional Capacity Settings:** Leave as **Default**
- **Additional Settings:** Leave all boxes unticked
- **Notifications:** Skip, click **Next**
- **Tags:** Add a tag  
  - **Key:** Name  
  - **Value:** e.g. name-app-asg  
![ASG Instance Tags](./images/auto_scaling_groups/asg_instance_tags.png)

### 8. Review and Create
- Review all configurations
- Click **Create Auto Scaling group**

---

## How to Delete an Auto Scaling Group (ASG)

> Important: Deleting the instance first will cause the ASG to recreate it. Follow this order:

### 1. Delete the Load Balancer (LB)
- Go to **Load Balancers** from EC2 dashboard  
  ![Load Balancer Navigation](./images/auto_scaling_groups/load_balancer_navigation.png)

- Select LB > **Actions** > **Delete Load Balancer**  
  ![Load Balancer Deletion](./images/auto_scaling_groups/load_balancer_deletion.png)

- Type **confirm** in the prompt to confirm deletion

### 2. Delete the Target Group (TG)
- Go to **Target Groups** from EC2 dashboard  
  ![Target Group Navigation](./images/auto_scaling_groups/target_group_navigation.png)

- Select TG > **Actions** > **Delete**  
  ![Target Group Deletion](./images/auto_scaling_groups/target_group_deletion.png)

- Confirm by clicking **Yes, delete**

### 3. Delete the ASG
- Go to **Auto Scaling Groups**  
  ![ASG Navigation Repeat](./images/auto_scaling_groups/asg_navigation.png)

- Select ASG > **Actions** > **Delete**  
  ![ASG Deletion](./images/auto_scaling_groups/asg_deletion.png)

- Type **delete** to confirm

---

## How to Create a Launch Template

### 1. Navigate to Launch Templates
From the EC2 dashboard, go to **Launch Templates**  
![Launch Template Navigation](./images/auto_scaling_groups/launch_template_navigation.png)

### 2. Create a New Template
Click **Create launch template**  
![Create Launch Template](./images/auto_scaling_groups/launch_template_creation.png)

### 3. Configure Launch Template
- **Name:** e.g. name-app-lt
- **Description:** Add a meaningful description
- Tick **Auto Scaling guidance**  
![Launch Template Naming](./images/auto_scaling_groups/launch_template_naming.png)

### 4. Application and OS Images (Amazon Machine Images - AMI)
- Select **My AMIs**
- Tick **Owned by me**
- Choose the appropriate AMI  
![Launch Template AMI](./images/auto_scaling_groups/launch_template_AMI.png)

### 5. Configure Instance Details
- **Instance Type:** t2.micro
- **Key Pair:** Select your existing key
- **Network Settings:**  
  - Select existing security group
  - Ensure it allows port **22** and **80**

- **User Data Script:** Add the script for app deployment
- **Resource Tags:**  
  - Key: Name  
  - Value: desired instance name
