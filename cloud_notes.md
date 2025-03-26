# Cloud Computing notes

### What is Cloud Computing?
The delivery of computing services over the internet e.g. servers, storage, databases. Often has a graphical interface and a pay-as-you-go service.

### How do we know if something is in the Cloud (on-prem vs the cloud)
Cloud software is stored and managed on the provider's servers, and accessed through a web browser or other interface. On-premise software is installed and runs on a company's own hardware infrastructure, and is hosted locally.

If it is build-upon services (e.g per user) then most likely it is a cloud service.

### What are some popular cloud computing services and how are they used?
- __Amazon Web Services (AWS)__
  - Hosting web applications
  - Storing and processing data
  - Building and deploying applications
- __Microsoft Azure__
  - Hosting applications
  - Databases
  - Backup and disaster recovery
- __Google Cloud Platform (GCP)__
  - Data storage
  - Data analytics
  - Machine learning
- __One Drive / Google Drive__
- __Adobe Suite__

### Explain the four main cloud deployment models
1. __Public__
   - Cloud services are owned and operated by a third-party cloud provider and made available to the general public. These services are delivered over the internet, and multiple customers share the same infrastructure 
2. __Private__
   - A cloud environment used exclusively by a single organisation and hosted either on-site at the organisation's data centre or by a third-party provider
   - Private cloud offers more control and customisation over the infrastructure 
3. __Hybrid__
   - Combination of public and private clouds which allows data and applications to be shared between them giving organisations greater flexibility to move workloads between clouds based on their specific needs
4. __Multi Cloud__
   - Using multiple cloud providers e.g Azure + GCP
   - Prevents Vendor Lock-in, improves reliability and flexibility
   - Extension of Public cloud

(Another Example)
- __Community__
   - Cloud environment that is shared by several organisations that have common concerns e.g security, compliance, regulatory requirements
   - Infrastructure is managed by either one of the organisations or a third-party provider and is commonly used by government agencies 

### Explain the three main types of cloud service
1. __Infrastructure as a Service (IaaS)__
   - Provides virtualised computing resources over the internet, such as virtual machines and storage
   - Basic building blocks for cloud IT
   - Highest level of flexibility and management control over your resources
   - Examples: AWS, Microsoft Azure, Google Cloud
2. __Platform as a Service (PaaS)__
   - Offers a platform and environment to develop, test and deploy applications without the need to manage underlying infrastructure. Have to write your own code within the provided environment
   - Promotes efficiency by reducing worry about resource procurement, capacity planning, software maintenance etc
   - Examples: Google App Engine, Heroku
3. __Software as a Service (SaaS)__
   - Delivers software applications over the internet, typically on a subscription basis, allowing users to access applications without the need to install or maintain them locally
   - A complete product that is run and managed by the service provider
   - Examples: Google Workspace, Microsoft 365, Dropbox  

### What are some of the main advantages of the cloud?
- __Cost__
  - Trade fixed expenses (e.g data centers) for variable expenses, and only pay for IT as you consume it. The expenses are lower than doing it yourself due to the economies of scale
- __Agility__
  - Easy access to a broad range of technologies to facilitate quicker innovation
  - Can quickly spin up resources as you need them
  - Can deploy technologies in a matter of minutes to get through the development lifecycle more quickly
- __Elasticity__
  - No over-provision of resources up front to handle peak levels of activity, can just provision the amount you need
  - Resources can be scaled vertically (up or down) or horizontally (in or out) instantly to suit business needs. Vertical scaling is an increase in compute power e.g a more powerful computer whereas horizontal scaling is adding a second computer
- __Global scale__
  - Expand to new geographic regions and deploy globally in minutes due to infrastructure across the world.
  - Can deploy in multiple physical locations
  - Applications closer in proximity to end users to reduce latency and improve their experience

### What are some potential pitfalls/disadvantages of using the cloud?
- __Downtime and Reliability__
  - Service outages are always a possibility and can occur for any reason due to cloud systems being internet-based
- __Security__
  - Data breaches - data is transferred remotely and accessed from any device with an internet connection. Hackers can potentially infiltrate the system and compromise data
  - Data compliance - difficult to trust third-party cloud services to handle sensitive data within regulatory requirements, especially across borders
- __Control limitations__
  - To optimise performance some companies prefer more control, but depending on the cloud service provider (CSP) they may face limitations on what can be altered
- __Vendor lock-in__
  - Over-reliance on a single CSP can be a problem if they make changes (e.g pricing) and may be expensive or tedious to change provider

### Have a look at marketshare? Who are the biggest Cloud providers?
1. __AWS__ (30% Q4 2024)
2. __Microsoft Azure__ (21% Q4 2024)
3. __GCP__ (12% Q4 2024)

    [Reference](https://www.statista.com/chart/18819/worldwide-market-share-of-leading-cloud-infrastructure-service-providers/)

### Which Cloud Provider is best? What are the big three known for?
No single 'best' provider

- __Amazon Web Services (AWS)__
  - Market Leader
  - Comprehensive Services
  - Scalability and Flexibility
  - Strong Community and Support
- __Microsoft Azure__
  - Strong Integration with Microsoft Ecosystem
  - Hybrid Cloud Focus
  - DevOps Capabilities - tools for automation, CI/CD, IaC
- __Google Cloud Platform (GCP)__
  - Data Analytics and AI
  - Kubernetes Expertise
  - Open Source Focus - many services built on open-source technologies

### What sorts of thing do you usually pay for when using the cloud?
- __Compute Resources__
  - Virtual Machines
  - Serverless Computing - pay based on number of executions / times your functions run
- __Storage__
  - Pay based on type and size of storage
- __Data Transfer__
  - When downloading data from the cloud to on-premises environments or transfer between regions. Pay based on volume of data and distance it travels
- __Networking__
  - Virtual Networks - pay for private IP addresses, VPN connections
- __Databases__
  - Managed Databases - pay for instance, storage, backup
  - Data Warehousing - pay based on storage and amount of data queried / processed
- __Software and Applications__
  - Subscription Fees
  - Licensing Costs
- __Support Plans__
  - Technical Support - premium plans for 24/7 access to engineers, faster response times etc

### What are the four pillars of DevOps? How are they linked to cloud computing?
1. __Collaboration__
   - Flexible, shared infrastructure supports collaboration between teams
   - Shared resources (e.g virtual machines, storage) that teams can access remotely supports collaboration across teams and locations
   - Version control, code repositories and collaboration tools (e.g Microsoft Teams, GitHub)
2. __Automation__
   - Cloud platforms offer automated services that simplify provisioning, scaling and managing infrastructure
   - IaC tools (e.g Terraform, AWS CloudFormation) allow teams to define infrastructure through code, making it repeatable and version-controlled
   - CI/CD pipelines in cloud environments automate entire process of building, testing and deploying software, which increases the speed and consistency of software delivery
3. __Continuous Integration / Continuous Deployment (CI/CD)__
   - CI/CD tools in the cloud enable faster and more frequent releases, and therefore have fast feedback loops
   - Scalable compute resources and robust integration with CI/CD tools (e.g Jenkins)
   - Fully managed CI/CD pipelines to help with automation testing, deployment and monitoring that scales with demand
4. __Monitoring and Logging__
   - Cloud providers offer robust monitoring and logging services which collect and analyse data about applications, infrastructure and services
   - Can monitor performance, troubleshoot issues and scale resources based on demand
   - Logs and metrics automatically captured, centralised and analysed to provide a comprehensive view of system performance