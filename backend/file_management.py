```python
import os
import shutil

class FileManager:
    def __init__(self):
        self.fileAttachments = []

    def save_file(self, file, destination):
        try:
            shutil.copy(file, destination)
            self.fileAttachments.append(destination)
            return True
        except Exception as e:
            print(f"An error occurred while saving the file: {e}")
            return False

    def delete_file(self, file_path):
        try:
            os.remove(file_path)
            self.fileAttachments.remove(file_path)
            return True
        except Exception as e:
            print(f"An error occurred while deleting the file: {e}")
            return False

    def move_file(self, file_path, new_path):
        try:
            shutil.move(file_path, new_path)
            self.fileAttachments.remove(file_path)
            self.fileAttachments.append(new_path)
            return True
        except Exception as e:
            print(f"An error occurred while moving the file: {e}")
            return False

    def get_file_size(self, file_path):
        try:
            return os.path.getsize(file_path)
        except Exception as e:
            print(f"An error occurred while getting the file size: {e}")
            return None

    def get_all_files(self):
        return self.fileAttachments
```