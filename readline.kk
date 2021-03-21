// Koka 2 doesn't have readline yet so here's a hack

import std/os/process
import std/os/file
import std/os/path

public fun readline() : io string {
  "read input; echo -n $input > .koka_input".run-system
  ".koka_input".path.read-text-file
}