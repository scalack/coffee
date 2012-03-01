say=(a,b)->a*b
say 2,13
console.log say 1,2
arrs = [1,3,2,5,4,7,18,9]

 
#插入算法
insertAlg= (arr)->
  len = arr.length
  for i in [1...len]
    tem = arr[i]
    for j in [i...0] when arr[j-1] > tem
      arr[j] = arr[j-1]
      arr[j-1] = tem

insertAlg2 = (arr)->
  len = arr.length
  for i in [1...len]
    tem = arr[i]
    j = i
    while tem > arr[j-1] 
      arr[j] = arr[j-1]
      j--
    arr[j] = tem 
    
    
#冒泡排序

bubbleSort = (arr)->
  len = arr.length
  for i in [0...len]
    for j in [0...len-i]
       if arr[j] > arr[j+1]
         [arr[j],arr[j+1]] = [arr[j+1],arr[j]]
         


#### 选择排序

selectSort= (arr)->
  len = arr.length
  for i in [0...len]
    min = i
    for j in [i+1...len]
     if arr[j] > arr[min]
       min = j
    [arr[i],arr[min]] = [arr[min],arr[i]]     


#快速排序

qs = (arr)->
  if arr.length <=1 then return arr
  piv = arr[Math.round(arr.length >>1)]
  left = arr.filter (x)-> x<piv
  right = arr.filter (x)-> x>piv
 
  (qs left).concat [piv],qs right
         
    
qs = (arr)->
  if arr.length <=1 then return arr
  left = (i for i in arr[1..] when i <arr[0])
  right = (i for i in arr[1..] when i >= arr[0])
  
  (qs left).concat [arr[0]],qs right

    
    