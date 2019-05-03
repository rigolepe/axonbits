//
// Created by Peter Rigole on 2019-04-24.
//

#ifndef AXONBITS_TEST_H
#define AXONBITS_TEST_H

#include <string>

/**
 * This must be (by far) the ugliest code I've ever written...
 * The reason is that we can't use virtual functions in combination with cuda unified memory.
 * I'll be glad to learn a better way to solve this!
 */

enum TestClass { arraytest, neuralnettest, unknown };

class Test {

public:

    Test();

    Test(const TestClass);

    ~Test();

    __host__
    void hostTest();

    __device__
    void deviceTest();

    __host__
    const char* getName();

private:
    const TestClass type;
};


#endif //AXONBITS_TEST_H