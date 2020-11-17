# Containerization hands-on excercise

## Source

Main.go was borrowed from a blogged example. [Read full article here](https://thedevsaddam.github.io/post/lets-make-a-simple-todo-app-with-go/)

## Prerequisites

1. Docker Desktop and Kind deployed

1. Kind cluster created. See `kind/` directory

## Operations

### Make your image available in Kind cluster

```bash
kind load docker-image <image_tag> --name resideo-hands-on
```

Take note of [Naming restrictions](https://kind.sigs.k8s.io/docs/user/quick-start/#loading-an-image-into-your-cluster).

### Cleanup

1. Remove Kind cluster

   ```bash
   kind delete cluster --name resideo-hands-on
   ```