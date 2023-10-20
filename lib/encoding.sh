#!/usr/bin/env bash

function hash {
  echo $1 | openssl dgst -sha1
}
