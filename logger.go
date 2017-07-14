package main

import "os/exec"
import "fmt"

func main() {
  cmd := exec.Command("./calculator.py", "10 2 *")
  out, err := cmd.Output()
  fmt.Println(string(out)) 
  fmt.Println(err)
}
