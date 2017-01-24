# Test Postgrest Performance

``` shell
curl 'test.pgrest.svc.2c308c16-e36e-c2b5-b1c1-9d9b163f77e8.us-sw-1.triton.zone:3000/order?select=*,customer\{*\}&limit=10&offset=0'
ab -c 1 -n 10 'test.pgrest.svc.2c308c16-e36e-c2b5-b1c1-9d9b163f77e8.us-sw-1.triton.zone:3000/order?select=*,customer\{*\}&limit=10&offset=0'
```
