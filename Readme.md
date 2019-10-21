
## Dep is dependency manager for Go
    Download dep from  https://go.equinox.io/github.com/golang/dep/cmd/dep

 
append the environment variable Path to dep.exe


Create a workspace folder 

Create a main.go with all the deps

Call dep init , It will Download all dependencies available in that folder



docker build -t golang/hello .


docker run -p 3000:3000 -t golang/hello

