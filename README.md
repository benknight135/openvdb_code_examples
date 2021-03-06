# OpenVDB Code Examples
Demonstrates the code examples from the [OpenVDB documentation](https://www.openvdb.org/documentation/doxygen/codeExamples.html)

Along side learning the OpenVDB syntax this is useful for showing how to build OpenVDB and it's dependencies as well as how to include it your own cmake program. 

## Compatibility
### OpenVDB Version
Latest OpenVDB version tested: [v7.1.0](https://github.com/AcademySoftwareFoundation/openvdb/commit/1673faca40db14eddd2f26bda3015a38e1f73a22)

### Build Compatibility
- [x] Windows VS2019 x64
- [ ] Windows VS2017 x64 (Coming soon)
- [ ] Windows VS2015 x64 (Coming soon)
- [ ] Ubuntu 16.04 (Coming soon)

## Setup
To download openvdb and dependencies run the 'setup.bat' batch file provided in this repository.
This will build OpenVDB from source so may take a few minutes. 

## Build
To build the code run the 'build.bat' batch file provided.  
See [here](https://www.openvdb.org/documentation/doxygen/build.html) for detailed build documentaion

## Run 
To run the code examples use 'run.bat'. This will run each code example, one after another. 

## Code Progress
- [x] “Hello, World” for OpenVDB [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sHelloWorld) [code](src/vdb_helloworld.cpp)
- [ ] Creating and writing a grid [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sAllocatingGrids)
- [ ] Populating a grid with values [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPopulatingGrids)
- [ ] Reading and modifying a grid [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sModifyingGrids)
- [ ] Stream I/O [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sStreamIO)
- [ ] Handling metadata [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sHandlingMetadata)
- [ ] Iteration [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sIteration)
- [ ] Interpolation of grid values [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sInterpolation)
- [ ] Transforming grids [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sXformTools)
- [ ] Combining grids [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sCombiningGrids)
- [ ] Generic programming [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sGenericProg)
- [ ] “Hello, World” for OpenVDB Points [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointsHelloWorld)
- [ ] Converting Point Attributes [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointsConversion)
- [ ] Random Point Generation [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointsGeneration)
- [ ] Point Iteration, Groups and Filtering [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointIterationFiltering)
- [ ] Strided Point Attributes [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointStride)
- [ ] Moving Points in Space [docs](https://www.openvdb.org/documentation/doxygen/codeExamples.html#sPointMove)