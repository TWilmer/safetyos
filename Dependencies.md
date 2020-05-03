# Dependencies

Though SOS should not have any runtime dependnecies. It has build dependencies to compile and check the source code. Argumentation is given as necessary why the
tools is safety critical or not.

## Build Dependencies

### Requirements engineering

For requriements engineering ReqIF is used. An Editor is available for eclipse here:

http://download.eclipse.org/rmf/updates/releases

### cpplint

Any version. To be installed with "pip install cpplint". Tool is used to check for google's C++ coding style. It is not deemed safety critical as it has no effect on the
produced code. The tool is used to find flaws which should already be seen during code review.

### gcc 7.5.0 for x64

Any version. It is not deemed safety critical as  gcc is not used for the target. it is used for simulation. If there is a deviation to the safety compiler it will be
observed in the unit tests. It is used on the PC to compile the unit tests

### clang 10.0.0-4ubuntu1

used to compile for the target. A-Version

### g++-aarch64-linux-gnu

used to compile for the target. B-Version

### safety compliant c++ compiler

The compiler is assumed to be safety compiliant (to be proved by the user of this component). The compiler shall be safety compilant. the user is expected
to configure the toolchain properly.