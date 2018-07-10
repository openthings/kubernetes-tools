{
  global: {},
  components: {
    // Component-level parameters, defined initially from 'ks prototype use ...'
    // Each object below should correspond to a component in the components/ directory
    "kubeflow-core": {
      AmbassadorImage: "quay.io/datawire/ambassador:0.30.1",
      AmbassadorServiceType: "ClusterIP",
      StatsdImage: "quay.io/datawire/statsd:0.30.1",
      centralUiImage: "gcr.io/kubeflow-images-public/centraldashboard:v20180618-v0.2.0-rc.0-5-g715aafc8-e3b0c4",
      cloud: "null",
      disks: "null",
      jupyterHubAuthenticator: "null",
      jupyterHubImage: "gcr.io/kubeflow/jupyterhub-k8s:v20180531-3bb991b1",
      jupyterHubServiceType: "NodePort",
      jupyterNotebookPVCMount: "/home/jovyan",
      jupyterNotebookRegistry: "gcr.io",
      jupyterNotebookRepoName: "kubeflow-images-public",
      name: "kubeflow-core",
      namespace: "null",
      reportUsage: "false",
      tfDefaultImage: "null",
      tfJobImage: "gcr.io/kubeflow-images-public/tf_operator:v0.2.0",
      tfJobUiServiceType: "ClusterIP",
      tfJobVersion: "v1alpha2",
      usageId: "unknown_cluster"
    },
    "seldon": {
      apifeImage: "seldonio/apife:0.1.6",
      apifeServiceType: "NodePort",
      engineImage: "seldonio/engine:0.1.6",
      name: "seldon",
      namespace: "null",
      operatorImage: "seldonio/cluster-manager:0.1.6",
      operatorJavaOpts: "null",
      operatorSpringOpts: "null",
      withApife: "false",
      withRbac: "true",
    },
  }
}
