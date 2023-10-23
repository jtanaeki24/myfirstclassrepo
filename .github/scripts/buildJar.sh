#!/bin/bash
set -xe

  # Maven is used to build  and create a jar file.
  chmod +x mvnw
  ./mvnw clean package

