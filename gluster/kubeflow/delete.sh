kubectl delete pod/jupyter-supermap -n kubeflow
kubectl delete pvc/claim-supermap -n kubeflow
kubectl delete pv/kubeflow-supermap
kubectl delete svc/glusterfs-gvz00 -n kubeflow
kubectl delete ep/glusterfs-gvz00 -n kubeflow

