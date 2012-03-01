say=(a,b)->a*b
say 2,13
console.log say 1,2
arrs = [1,3,2,5,4,7,18,9]

####插入算法

insertAlg= (arr)->
  len = arr.length
  for i in [1...len]
    tem = arr[i]
    for j in [i-1..0] when arr[j] > tem
      arr[j+1] = arr[j]
      arr[j] = tem

insertAlg(arrs)
alert arrs
