```python
import schedule
import time

class TaskAutomation:
    def __init__(self):
        self.jobs = []

    def add_task(self, task, schedule_time, interval='daily'):
        if interval == 'daily':
            schedule.every().day.at(schedule_time).do(task)
        elif interval == 'hourly':
            schedule.every().hour.at(schedule_time).do(task)
        elif interval == 'weekly':
            schedule.every().week.at(schedule_time).do(task)
        self.jobs.append(task)

    def remove_task(self, task):
        schedule.cancel_job(task)
        self.jobs.remove(task)

    def run_tasks(self):
        while True:
            schedule.run_pending()
            time.sleep(1)

def sample_task():
    print("Task executed")

if __name__ == "__main__":
    task_automation = TaskAutomation()
    task_automation.add_task(sample_task, "12:00")
    task_automation.run_tasks()
```