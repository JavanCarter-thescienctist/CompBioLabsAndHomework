
tail PredPreyData.csv > midproduct
head -n 1 PredPreyData.csv > midproduct2
cat  midproduct2 midproduct > midproduct3
cut -f 2-4 -d , midproduct3 > Finishedproduct.csv





