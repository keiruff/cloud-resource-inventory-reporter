# Cloud Resource Inventory Reporter

Cloud Resource Inventory Reporter is a PowerShell utility designed to automate cloud infrastructure discovery and generate inventory reports for administrators, infrastructure teams, and engineering technology organizations.

The tool connects to cloud provider APIs, inventories available resources, and exports findings to a CSV report for documentation, auditing, and operational visibility.

---

## Are You Trying to Figure Out...

* What cloud resources currently exist in your AWS environment?
* Which databases are running and available?
* How to generate a quick inventory report for documentation or auditing purposes?
* How to identify cloud assets without manually browsing management consoles?
* How to create a repeatable infrastructure discovery process?
* How to establish a baseline before cloud migrations or environment reviews?

Cloud Resource Inventory Reporter helps infrastructure teams quickly identify resources and generate inventory reports using PowerShell and cloud provider APIs.

---

## Current Capabilities

### AWS Resource Discovery

The current release supports:

* AWS CLI integration
* AWS credential authentication
* Amazon RDS inventory reporting
* Resource status collection
* Region identification
* Availability Zone reporting
* CSV report generation
* PowerShell automation workflows

---

## Example Output

```text
CloudProvider    : AWS
ResourceType     : RDS
ResourceName     : myguitarshop
Engine           : mysql
Status           : available
Region           : us-east-1
AvailabilityZone : us-east-1f
```

Generated CSV output:

```csv
CloudProvider,ResourceType,ResourceName,Engine,Status,Region,AvailabilityZone
AWS,RDS,myguitarshop,mysql,available,us-east-1,us-east-1f
```

---

## Intended Users

* Infrastructure Administrators
* Cloud Administrators
* Systems Engineers
* Engineering Technology Teams
* IT Operations Staff
* Managed Service Providers
* Public Sector Technology Teams

---

## Installation

### Prerequisites

* Windows PowerShell
* AWS CLI
* AWS Account
* Configured AWS Credentials

Verify AWS CLI installation:

```powershell
aws --version
```

Configure credentials:

```powershell
aws configure
```

---

## Usage

Navigate to the project directory:

```powershell
cd C:\Projects\cloud-resource-inventory-reporter
```

Run the script:

```powershell
.\cloud-resource-inventory-reporter.ps1
```

Output:

```text
Cloud inventory report created.
Resources Found: 2
```

The report is exported to:

```text
cloud-resource-report.csv
```

---

## Current Roadmap

### Planned AWS Enhancements

* EC2 Inventory Reporting
* S3 Bucket Discovery
* VPC Discovery
* Security Group Reporting
* IAM Inventory Reporting
* Multi-Region Scanning

### Planned Azure Enhancements

* Azure CLI Integration
* Azure Resource Inventory
* Azure Resource Group Discovery
* Azure VM Reporting
* Azure Storage Reporting

### Reporting Enhancements

* HTML Reports
* Dashboard Output
* Scheduled Reporting
* Historical Inventory Tracking
* Change Detection

---

## Commercial Support

Using this tool as part of a larger cloud migration, infrastructure audit, or operational assessment?

CivicSpan IT Group provides:

* Infrastructure Technology Support
* Cloud Administration Assistance
* PowerShell Automation
* Technical Documentation
* Engineering Technology Support
* Bentley ProjectWise Administration
* Infrastructure Workflow Optimization

Website:
https://civicspanitgroup.com

GitHub:
https://github.com/keiruff

LinkedIn:
https://www.linkedin.com/company/civicspan-it-group

---

## License

MIT License
