factorial ^n = {
  helper ^num ^acc = {
    if (num == 0) ^!(
      return acc
    )
    return (helper (num-1) (num*acc))
  }
  return (helper n 1)
}

private.fibCache = []
fib ^n = {
  if (n == 0 || n == 1) ^!(
    return n
  )

  if (fibCache.has n) ^!(
    return (fibCache n)
  )

  fibCache n = ((fib (n-1)) + (fib (n-2)))
  return (fibCache n)
}
