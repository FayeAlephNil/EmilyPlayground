array = project.util.array

factorial ^n = {
  helper ^num ^acc = {
    if (num == 0) ^!(
      return acc
    )
    return: helper (num-1) (num*acc)
  }
  return: helper n 1
}

# Returns a to the power of b
pow ^a ^b = {
  helper ^aNum ^bNum ^acc = {
    if (bNum == 0) ^!(
      return acc
    )
    return: helper aNum (bNum - 1) (aNum * acc)
  }
  helper a b 1
}

fibCache = []
fib ^n = {
  if (n < 0) ^!(
    posN = n.negate
    return: (pow (~1) posN) * (fib  posN).negate
  )

  if (n == 0 || n == 1) ^!(
    return n
  )

  if (fibCache.has n) ^!(
    return: fibCache n
  )

  result = (fib (n-1)) + (fib (n-2))
  fibCache n = result
  return result
}

inc ^a ^obj = {
  obj.genArg = obj.genArg + 1
  return a
}
natural = array.lazyEnum.create inc 1
