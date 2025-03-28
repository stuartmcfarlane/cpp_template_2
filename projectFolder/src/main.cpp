#include "utility/utility.h"
#include <cstdio>
#include <iostream>

int main()
{
    std::cout << Utility::HelloWorld() << std::endl;
    std::puts(Utility::GoodbyeWorld().c_str());
    return 0;
}
