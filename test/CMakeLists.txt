add_executable(testConsistency.test testConsistency.cpp)
target_link_libraries(testConsistency.test -lboost_unit_test_framework)
add_test(testConsistency testConsistency.test)
add_executable(testThroughput.test testThroughput.cpp)
target_link_libraries(testThroughput.test -lboost_unit_test_framework)
add_test(testThroughput testThroughput.test)
