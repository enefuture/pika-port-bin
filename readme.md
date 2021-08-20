# pika-port-bin

 Pika迁移中的特殊命令

 set a a ex 1000 ==> PKSETEXAT a 1639372592 aaaa

 需要特殊兼容这个命令，不然会丢失带有ttl的过期key

## Platform
---

  * compile platform: CentOS Linux release 7.3.1611 (Core)
  * compile gcc: gcc version 4.8.5 20150623 (Red Hat 4.8.5-11) (GCC)
