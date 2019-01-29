#include <iostream>
#include "Cxx.h"
#include "HsExport_stub.h"


int CallCxx(int port) {
    std::cout << "called from haskell" << std::endl;
    return 10;
}

void CallBackHaskell() {
    std::cout << fibonacci_hs(10) << std::endl;
}

