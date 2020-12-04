# valgrind-docker-powershell
Running valgrind on windows powershell to test memory leaks in C++ projects

# Pre-requisites

- Docker
- Powershell

# Make docker image

```
docker build -t memory-test:0.1 .
```

# Test memory

1. Run Powershell as Administrator

2. Copy C++ files into folder /test/

3. Run command, altering the compilation as neccessary

```
docker run -ti -v ${PWD}\test:/test memory-test:0.1 bash -c "cd /test/; g++ -std=c++11 -o main main22.cpp Library.cpp Book.cpp LibraryItem.cpp && valgrind --leak-check=full ./main"
```

