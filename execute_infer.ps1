
# Ciclo da 3 a 10 per il parametro k
for ($k = 3; $k -le 10; $k++) {
  # Ciclo da 2 a k-1 per il parametro h
  for ($h = 2; $h -lt $k; $h++) {
    $out1 = ".\outputs\2023\infer_${k}_${h}_under.txt"
    $out2 = ".\outputs\2023\infer_${k}_${h}_over.txt"
    
    echo "======================= k = ${k} h = ${h} =======================" >> .\outputs\2023\caspita_infer.log 
    # Esegui il comando Java con i parametri specificati
    java -jar CASPITA.jar .\paths-files\2023\duplicate-free.txt 100 $k $h 0.1 BOTH $out1 $out2 >> .\outputs\2023\caspita_infer.log

    echo "" >> .\outputs\2023\caspita_infer.log
    echo "" >> .\outputs\2023\caspita_infer.log
  }
}
