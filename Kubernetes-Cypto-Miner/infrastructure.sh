az aks create -n ctfCluster -g transform2023-rg  --generate-ssh-keys --attach-acr ctfContainerRegistry

az aks get-credentials -n ctfCluster -g transform2023-rg
