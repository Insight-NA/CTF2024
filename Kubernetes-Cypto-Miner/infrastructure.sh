az group create -n MasteryCTF_Andrew -l eastus

az acr create -n ctfcontainerregistry -g MasteryCTF_Andrew --sku Basic

az aks create -n ctfCluster -g MasteryCTF_Andrew --generate-ssh-keys --attach-acr ctfcontainerregistry

az aks get-credentials -n ctfCluster -g MasteryCTF_Andrew 
