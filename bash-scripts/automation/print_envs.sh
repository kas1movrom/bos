#!/bin/bash

env | grep = | cut -d= -f1 | sort
