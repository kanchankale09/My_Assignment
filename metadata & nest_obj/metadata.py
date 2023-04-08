import os

# Set your project ID, Zone and VM instance name
project_id = "my-test-terraform-383009"
zone = "us-west4-b"
instance_name = "instance-1"

# SSH into the VM instance and run the command
# 1 os.system(f"gcloud compute ssh {instance_name} --project={project_id} --command='curl \"http://metadata.google.internal/computeMetadata/v1/instance/image\" -H \"Metadata-Flavor: Google\"'")
# 2 os.system(f"gcloud compute ssh {instance_name} --project={project_id} --command='curl \"http://metadata.google.internal/computeMetadata/v1/instance/disks/?recursive=true\" -H \"Metadata-Flavor: Google\"'")
# 3
os.system(f"gcloud compute ssh {instance_name} --project={project_id} --command='curl \"http://metadata.google.internal/computeMetadata/v1/instance/disks/0/type\" -H \"Metadata-Flavor: Google\"'")


# 1 output: projects/debian-cloud/global/images/debian-11-bullseye-v20230306
# JSON format output
# 2 output: [{"deviceName":"instance-1","index":0,"interface":"SCSI","mode":"READ_WRITE","type":"PERSISTENT-BALANCED"}]
# data key-value retrieved individually
# 3 output:  PERSISTENT-BALANCED
