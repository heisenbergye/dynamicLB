
in nginx-conf
`upsync consul-ui:80/v1/kv/upstreams/test/`

oc create cm nginx-conf --from-file=nginx.conf

oc apply -f nginx-deployment.yaml

curl -X PUT -d '{"weight":1, "max_fails":2, "fail_timeout":10}' http://consul-helmstuff.heisenbergye-0773176c547ad8d39abdc88e61212f87-0000.jp-tok.containers.appdomain.cloud/v1/kv/upstreams/test/172.21.0.255:8080
