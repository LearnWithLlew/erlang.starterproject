# To run this script directly, run this in an elevated admin PowerShell prompt:
#     Invoke-WebRequest -UseBasicParsing https://raw.githubusercontent.com/LearnWithLlew/erlang.starterproject/main/install.windows.ps1 | Invoke-Expression

# This script is intended to setup a dev machine from scratch. Very useful for setting up a EC2 instance for mobbing.
#


iwr -useb https://raw.githubusercontent.com/JayBazuzi/machine-setup/main/windows.ps1 | iex

choco install erlang --version=23.3
choco install rebar3

# Clone repo
& "C:\Program Files\Git\cmd\git.exe" clone https://github.com/LearnWithLlew/erlang.starterproject.git C:\Code\erlang.starterproject
cd C:\Code\erlang.starterproject

# Run starting haskell stuff
run_tests.bat

# Done
cls
echo "Done!"
