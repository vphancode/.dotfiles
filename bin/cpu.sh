#!/bin/bash

$HOME/.dotfiles/bin/mem-cpu-load | awk -F']' '{ print $2}' | cut -d' ' -f3

