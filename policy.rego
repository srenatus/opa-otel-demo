package foo

bar {
  { call(x) | {"a", "b", "c", "d", "e"}[x] }
}

call(n) {
  delay := rand.intn(n, 5)
  url := sprintf("http://httpbin.org/delay/%d", [delay])
  resp := http.send({"url": url, "method": "GET"})
  print(resp.status)
}
