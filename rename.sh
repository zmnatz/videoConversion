for i in *.MP4; 
do newname=$(stat -t %Y%m%d%H%M%S -f %Sm -- $i); 
mv -- $i $newname.MP4; 
done

