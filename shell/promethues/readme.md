

install 

```
curl -s  https://raw.githubusercontent.com/orangle/mydeploy/master/shell/promethues/node_exportor_ubuntu.sh | sudo bash
```

push 
```
*/2 * * * * curl -s http://localhost:9100/metrics | grep -v "\(\(^\| \)go_\|http_request\|http_requests\|http_response\|process_\)" | curl --user push:gateway --data-binary @- https://xxxxx/metrics/job/orangleliu/instance/node_name:9100  > /dev/null 2>&1
```