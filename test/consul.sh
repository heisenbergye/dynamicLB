podman run --name consul -p  8500:8500 -d docker.io/consul:1.6.1 agent -server -datacenter dc1 -node consul-server-1 -bootstrap -client 0.0.0.0 -ui

# curl -X PUT -d '{"weight":1, "max_fails":2, "fail_timeout":10}' http://127.0.0.1:8500/v1/kv/upstreams/test/192.168.57.17:10081
# curl -X PUT -d '{"weight":1, "max_fails":2, "fail_timeout":10}' http://127.0.0.1:8500/v1/kv/upstreams/test/192.168.57.17:10082
