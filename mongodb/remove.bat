cd bin
net stop MongoDB
mongod.exe --remove
sc delete MongoDB
@pause