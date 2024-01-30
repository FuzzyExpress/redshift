current_temp=$(redshift -p -m dummy 2>&1 | grep -oP '(?<=Current temperature: ).*')
fade_command="redshift -O $current_temp -b 1.0:0.0 -t $(($current_temp - 3000)):$current_temp -l 0:0 -P -m dummy"
echo $fade_command