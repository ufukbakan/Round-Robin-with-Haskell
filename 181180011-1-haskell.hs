-- Ufuk Bakan Gazi University  - 181180011 - 2020
quantum = 5

checkSwitch n =
  if n >= 2
    then 1
    else 0

isle x switch = do
  let l = length x
  if l > 0
    then do
    let tempSwitch = ((checkSwitch l) + switch)
    if l >= 2
      then do
      putStrLn "Context Switch var"
      putStr "Su ana kadar toplam Context Switch : "
      putStrLn (show tempSwitch)
      else do
      putStrLn "Context Switch yok"
      putStr "Su ana kadar toplam Context Switch : "
      putStrLn (show tempSwitch)

    if x!!0 > quantum
      then do
      let yeniSira = (tail x) ++ [(head x) - quantum]
      print yeniSira
      isle yeniSira tempSwitch
      else do
      let yeniSira = (tail x)
      print yeniSira
      isle yeniSira tempSwitch
    else do
    putStrLn "Butun islemler tamamlandi"
  return ()

main = do
  let sira = [10,3,20]
  putStrLn "Dizi islemlerin kalan surelerini gosterir"
  putStr "Quantum degeri (Time Quantum / TQ) : "
  putStrLn (show quantum)
  putStrLn "En soldaki islem siranin en basindakidir"
  print sira
  isle sira 0