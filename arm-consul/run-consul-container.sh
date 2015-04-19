#!/bin/bash

external_ip="$(ip ro | awk '/^default/{print $9}')"
`docker run --rm alexeyraga/arm-consul cmd:run $external_ip`