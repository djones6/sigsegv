# sigsegv

Sample code for handling a SIGSEGV and generating a core, then keeping the process alive.

The usage scenario is when debugging a crash inside a container, so that it does not immediately get destroyed, and we have a chance to examine the core.
