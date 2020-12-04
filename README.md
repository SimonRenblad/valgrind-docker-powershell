# valgrind-docker-powershell
Running valgrind on windows powershell to test memory leaks in C++ projects

# Pre-requisites

- Docker
- Powershell

# How to run

1. Run Powershell as Administrator and clone into project

2. Create test folder
```
mkdir test
```

3. Enable PS scripting
```
Set-ExecutionPolicy RemoteSigned
```

4. Create Docker image
```
.\create.ps1
```

5. Copy project files into test folder

6. Test memory using the compilation command normally used (g++) (target executable must be named "main")
```
.\test_memory.ps1 -c "{compilation command}"
```

Example:
Assuming main.exe compiles from main.cpp and Animal.cpp
```
.\test_memory.ps1 -c "g++ -std=c++11 -o main main.cpp Animal.cpp"
```

7. Read output in log.txt file

