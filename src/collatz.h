#ifdef COLLATZ_H
#error Already included
#else
#define COLLATZ_H

extern "C" size_t collatz_length(size_t value);
extern "C" size_t collatz_calc(size_t value);

#endif
