# Operating Systems Assignment 01 - Report
**Student Name:** Muneeb Ur Rehman  
**Roll Number:** BSDSF24M020  
**Repository:** BSDSF24M020-OS-A01  

## Overview
This assignment demonstrates foundational system programming concepts in C using Linux development tools:
1. **Multi-file Compilation**: Structured code separation into headers (`include/`) and sources (`src/`), automated via a robust `Makefile`.
2. **Static Libraries (`.a`)**: Packed object files using the `ar` utility to create `lib/libmyutils.a` and linked statically.
3. **Dynamic Libraries (`.so`)**: Compiled Position-Independent Code (`-fPIC`) with `-shared` flags to create a runtime-linked shared library, configured via `-Wl,-rpath`.
4. **Version Control**: Managed milestones across dedicated branches (`multifile-build`, `static-build`, `dynamic-build`) with annotated tags (`v0.1.1-multifile`, `v0.2.1-static`, `v0.3.1-dynamic`).
