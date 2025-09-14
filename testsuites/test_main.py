import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from app.main_app import main_function

def test_main_output():
    assert main_function() == "Hello, DevOps World!"

