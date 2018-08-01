ansible 提供了cron模块

```
ansible-doc -s cron
```

把下面的cron 添加到所有主机

```
*/2 * * * * curl -s http://localhost:9100/metrics | grep -v "\(\(^\| \)go_\|http_request\|http_requests\|http_response\|process_\)" | curl --data-binary @- http://pushgeteway:9091/metrics/job/elmeast/instance/{{hostip}}:9100  > /dev/null 2>&1
```

