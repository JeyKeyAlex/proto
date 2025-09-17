# proto

echo "# proto" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:JeyKeyAlex/proto.git
git push -u origin main

# Команда для генерации pb.go файлов:

protoc -I protobuff protobuff/sso/sso.proto --go_out=./gen/gogen --go_opt=paths=source_relative --go-grpc_out=./gen/gogen/ --go-grpc_opt=paths=source_relative

1. protoc -I protobuff - общая папка со всеми протофайлами
2. protobuff/sso/sso.proto - путь до конкретного протофайла, который хочу скомпилировать в pb.go
3. --go_out=./gen/gogen - куда будут сохраняться сгенерированные файлы pb.go
4. --go_opt=paths=source_relative - параметр opt говорит о том, что сгенерированные файлы будут испоьзовать тот же пакет, что и исходные протофайлы
5. --go-grpc_out=./gen/gogen/ - куда будут сохраняться сгенерированные файлы grpc.pb.go
6  --go-grpc_opt=paths=source_relative - параметр opt говорит о том, что сгенерированные файлы будут испоьзовать тот же пакет, что и исходные протофайлы
