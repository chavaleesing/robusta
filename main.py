import os
from dotenv import load_dotenv
import subprocess

# Load environment variables from .env file
load_dotenv()

# Define the command to run Robot Framework tests
command = ["robot", "tests/"]  # Update with your test suite file

# Run the Robot Framework tests
subprocess.run(command)
