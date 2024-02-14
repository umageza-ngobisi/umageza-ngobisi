# import necessary modules
import sys
from io import StringIO
from contextlib import redirect_stdout

def execute_code(code):
    """
    Execute the provided Python code and capture its output.
    """
    try:
        # Redirect stdout to capture output
        output = StringIO()
        with redirect_stdout(output):
            exec(code)
        return output.getvalue()
    except Exception as e:
        return f"Error: {str(e)}"

def main():
    """
    Main function to get code input from the user and execute it.
    """
    print("Welcome to the Python Code Executor!")
    print("Enter your Python code below and press Enter to execute.")
    print("Type 'exit' to quit.")

    while True:
        user_code = input(">>> ")
        
        # Check if the user wants to exit
        if user_code.lower() == 'exit':
            print("Exiting...")
            break

        # Execute the user's code
        result = execute_code(user_code)
        print("Output:")
        print(result)

if __name__ == "__main__":
    main()

