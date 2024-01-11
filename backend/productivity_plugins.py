```python
import os
import subprocess

class ProductivityPlugins:
    def __init__(self):
        self.plugins = {
            'todo': self.todo,
            'timer': self.timer,
            'note': self.note,
        }

    def execute_plugin(self, plugin_name, *args, **kwargs):
        if plugin_name in self.plugins:
            return self.plugins[plugin_name](*args, **kwargs)
        else:
            raise ValueError(f'No such plugin: {plugin_name}')

    def todo(self, task):
        with open('todo.txt', 'a') as f:
            f.write(task + '\n')
        return 'Task added to todo list'

    def timer(self, time):
        subprocess.call(['sleep', str(time)])
        return 'Timer finished'

    def note(self, note):
        with open('notes.txt', 'a') as f:
            f.write(note + '\n')
        return 'Note added'
```