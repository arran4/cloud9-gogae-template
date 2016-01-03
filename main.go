package api

import (
  "net/http"
)

func init() {
  http.HandleFunc("/api/", rootFunc)
}

func rootFunc(w http.ResponseWriter, r *http.Request) {
  w.Write([]byte("hihi"))
}
