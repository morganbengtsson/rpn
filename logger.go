package main

import "os/exec"
import "fmt"
import "os"
import "time"

func main() {
  now := time.Now()
  expression := os.Args[1]
  cmd := exec.Command("./calculator.py", expression)
  out, err := cmd.Output()

  f, err := os.OpenFile("log.log", os.O_RDWR | os.O_CREATE | os.O_APPEND, 0666)
  if err != nil {
    panic(err)
  }
  defer f.Close()

  if _, err = f.WriteString(now.String() + " " + expression + "\n"); err != nil {
    panic(err)
  }
}
