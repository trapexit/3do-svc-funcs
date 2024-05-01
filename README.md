# svc_funcs

A simple library for the 3DO which provides access to kernel functions
to be used in supervisor mode since the symbols are not publicly
available.

`svc` on ARM stands for supervisor mode.

The ordering of the functions relative to the `KernelBase` object can
be found in
[folio.c](https://github.com/trapexit/portfolio_os/blob/master/src/kernel/folio.c).

See [svc_mem_device](https://github.com/trapexit/3do-svc-mem-device) for a
usage example. Note that the functions must be called from supervisor
mode.

## Building

1. Get [3do-devkit](https://github.com/trapexit/3do-devkit)
2. `source 3do-devkit/activate-env`
3. `make`
4. `make install` will install the header and library into 3do-devkit
