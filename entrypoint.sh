#!/usr/bin/env bash

nginx

gunicorn -b 0.0.0.0:8080 -w 5 main:app
