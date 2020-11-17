# Containerization hands-on excercise

## Source

Main.go was borrowed from a blogged example. [Read full article here](https://thedevsaddam.github.io/post/lets-make-a-simple-todo-app-with-go/)

## Task

This repository Golang ToDo web application that requires Mongo backend. The goal of the task is to demonstrate understanding of containerized deployments.

### Primary goals

1. Build container with ToDo list web application

1. Run it alongside Mongo container

1. Demonstrate end-to-end setup

1. Create a pull request containing end-to-end build and deployment code against this repository

1. Be prepared to answer PR-related questions

### Bonus points

1. Harden images and connections

1. Improve code to expose container lifecycle management endpoints

1. Protect HTTP endpoint with SSL

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

1. Remove Mongo data

   ```bash
   rm -rf kind/data/*
   ```