# Kind configuration used to run task locally

For more information, refer to [Kind documentation](https://kind.sigs.k8s.io/docs/user/configuration/)

## Creating cluster

1. Install [prerequisites](https://kind.sigs.k8s.io/docs/user/quick-start)

1. Chage directory to `kind` - this will allow you to mount data volume from relative path

1. Run

  ```bash
  kind create cluster --config kind.yaml
  ```

## Cluster configuration

- Cluster is named `resideo-hands-on`

- One control plane node and one worker node

- Worker node mounts `/tmp` directory and exposes it as `/data` directory for pods' mount consumption
