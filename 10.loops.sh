#!/bin/bash
for i in $@ {
then yum install i -y
exit 1
}
done