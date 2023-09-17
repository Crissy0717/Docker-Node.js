
FROM node:7
ADD app.js /app.js
ENTRYPOINT ["node"]CMD ["app.js"]
# Entrypoint is advantageous when building applications that use same commands all the time. A good example: when running javascript the executable 
# enviroment is node.js so in this situation it is advantageous to use entypoint to define the command node
# CMD is always ignored by the docker daemon and therefore it is advantageous when building applications that use different commands all the time. 
# A good example: when running javascript the file that contain the code can always change from one egineer to another so we can put the parameter 
# name of the javascript code to run under the instruction of CMD to allow egineers to customize the application container in accordance to their own needs
# or specifications
