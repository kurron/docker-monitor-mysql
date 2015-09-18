#!/bin/bash

curl --verbose localhost:8200/operations/health | python -m json.tool

