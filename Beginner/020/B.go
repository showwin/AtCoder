package main

import (
  "fmt"
  "strconv"
)

func main() {
  var i, j int
  fmt.Scan(&i, &j)
  j_s := strconv.Itoa(j)
  t := 1
  for k := 0; k < len(j_s); k++ {
    t = t * 10
  }
  fmt.Println((i*t+j)*2)
}
