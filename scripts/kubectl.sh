# Setup the namecheap.yaml.tpl
# kubectl apply -f namecheap.yaml

helm install --debug --set email=jrbeverly@live.com -n cert-manager letsencrypt-namecheap-issuer deploy/letsencrypt-namecheap-issuer/
