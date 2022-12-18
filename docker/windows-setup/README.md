1/ On some Linux distros, `docker daemon` does not automatically start up.
- On Windows 11, it can be solved by `boot` configuration in [wsl.conf](https://learn.microsoft.com/en-us/windows/wsl/wsl-config).
- On Windows 10 and lower, you might need to a script to help start `docker daemon` up, `start-docker-daemon.vbs`.