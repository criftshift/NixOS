if [ ! -d /home/crift/wallpaper ]; 
then mkdir /home/crift/wallpaper; fi  
if [ ! -f /home/crift/wallpaper/wp ]; 
then curl https://images-ng.pixai.art/images/orig/ab870c00-6a31-48bf-9633-01513eefdea8 > /home/crift/wallpaper/wp; fi && 
swww init 2>&1 
swww img /home/crift/wallpaper/wp 