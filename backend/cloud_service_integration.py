```python
import boto3
from botocore.exceptions import NoCredentialsError

class CloudServiceIntegration:
    def __init__(self, access_key, secret_key, bucket_name):
        self.s3 = boto3.client('s3', aws_access_key_id=access_key,
                               aws_secret_access_key=secret_key)
        self.bucket_name = bucket_name

    def upload_to_cloud(self, local_file, cloud_file):
        try:
            self.s3.upload_file(local_file, self.bucket_name, cloud_file)
            print("Upload Successful")
            return True
        except FileNotFoundError:
            print("The file was not found")
            return False
        except NoCredentialsError:
            print("Credentials not available")
            return False

    def download_from_cloud(self, cloud_file, local_file):
        try:
            self.s3.download_file(self.bucket_name, cloud_file, local_file)
            print("Download Successful")
            return True
        except FileNotFoundError:
            print("The file was not found")
            return False
        except NoCredentialsError:
            print("Credentials not available")
            return False

# Initialize cloud service
cloud_service = CloudServiceIntegration('access_key', 'secret_key', 'bucket_name')

# Upload file to cloud
cloud_service.upload_to_cloud('local_file_path', 'cloud_file_path')

# Download file from cloud
cloud_service.download_from_cloud('cloud_file_path', 'local_file_path')
```