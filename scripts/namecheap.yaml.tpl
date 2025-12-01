apiVersion: v1
kind: Secret
metadata:
  name: namecheap-credentials
  namespace: cert-manager
type: Opaque
stringData:
  apiKey: my_api_key_from_namecheap
  apiUser: my_username_from_namecheap