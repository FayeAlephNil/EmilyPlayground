factorial ^n = {
  helper ^num ^acc = {
    if (num == 0) ^!(
      return acc
    )
    return (helper (num-1) (num*acc))
  }
  return (helper n 1)
}

private.fib_cache = []
fib ^n = {
  if (n == 0 || n == 1) ^!(
    return n
  )

  if (fib_cache[n]) ^!(
    return fib_cache[n]
  )

  return ((fib (n-1)) + (fib (n-2)))
}
