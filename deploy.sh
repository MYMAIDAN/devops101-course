#!/bin/bash
 k3d cluster create demo

 kubectl create deploy demo --image mykhailomaidan/devops101-cource-module1:1.0.1