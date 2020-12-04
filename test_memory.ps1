param([string]$c = "g++ -o main main.cpp")

docker run -ti -v ${PWD}\test:/test memory-test:0.1 bash -c "cd /test/; $c && valgrind --leak-check=full ./main" > ${PWD}\log.txt
