#include <iostream>
#include "cub/util_allocator.cuh"

cub::CachingDeviceAllocator  g_allocator(true);

int main() {
  std::cout << "Hello, World!" << std::endl;
  return 0;
}
