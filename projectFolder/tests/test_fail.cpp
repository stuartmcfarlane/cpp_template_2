#include "test.h"

void testFail()
{
    assertTrue(false);
}

int main()
{
    testFail();

    return 0;
}
