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

# Test memory

1. Run Powershell as Administrator

2. Copy C++ files into folder /test/

3. Run command, altering the compilation as neccessary

```
docker run -ti -v ${PWD}\test:/test memory-test:0.1 bash -c "cd /test/; g++ -std=c++11 -o main main22.cpp Library.cpp Book.cpp LibraryItem.cpp && valgrind --leak-check=full ./main"
```

