#!/bin/bash

curl --verbose localhost:8300/operations/health | python -m json.tool

