{
  global: {
    // User-defined global parameters; accessible to all component and environments, Ex:
    // replicas: 4,
  },
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    jupyter: {
      accessLocalFs: "false",
      gcpSecretName: "user-gcp-sa",
      image: "gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1",
      jupyterHubAuthenticator: "null",
      name: "jupyter",
      notebookGid: "-1",
      notebookUid: "-1",
      platform: "none",
      rokSecretName: "secret-rok-{username}",
      serviceType: "ClusterIP",
      storageClass: "null",
      ui: "default",
      useJupyterLabAsDefault: "false",
    },
  },
}
