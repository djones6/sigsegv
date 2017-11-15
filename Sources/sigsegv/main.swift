import Signals
import Glibc

// Handle signal 11 (SIGSEGV)
Signals.trap(signal: .user(11)) { signal in
  print("Received \(signal)")
  // Generate core
  if fork() == 0 {
    abort()
  }
  // Sleep 2 minutes
  usleep(120000000)
  print("Done")
}

// Wait 2 minutes for someone to send a signal
print("Waiting...")
usleep(120000000)
print("Waited too long")
