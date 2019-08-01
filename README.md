# titan-custom
A custom Docker image for Titan that logs to STDOUT.

Original repo: https://github.com/distributedio/titan

This uses more standard file locations for the binary, and wraps the "titan" command in a tail of the log file output to recreate the standard log to STDOUT behavior you would need in a Kubernetes environment.
