#!/bin/bash
for f in /docker-cronlock-init.d/*.sh; do
	. $f
done
exec "$@"