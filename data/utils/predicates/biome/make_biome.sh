rm -r end
rm -r overworld
rm -r nether
mkdir end
mkdir overworld
mkdir nether

while read line
do

cp sample.json overworld/$line.json
sed -i s/plains/$line/g overworld/$line.json

#do stuff with $line
done < biomelist.txt
####################################################
while read line
do

cp sample.json end/$line.json
sed -i s/plains/$line/g end/$line.json

#do stuff with $line
done < biomeend.txt
#################################################
while read line
do

cp sample.json nether/$line.json
sed -i s/plains/$line/g nether/$line.json

#do stuff with $line
done < biomenether.txt






