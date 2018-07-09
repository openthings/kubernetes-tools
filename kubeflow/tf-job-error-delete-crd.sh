#for ERROR handle object: can't update customresourcedefinitions tfjobs.kubeflow.org: #CustomResourceDefinition.apiextensions.k8s.io "tfjobs.kubeflow.org" is invalid: spec.version: Invalid value: "v1alpha2": must #match the first version in spec.versions 

#https://github.com/kubeflow/kubeflow/issues/1029

kubectl delete crd tfjobs.kubeflow.org
