#!/bin/bash

ps aux --sort -rss | tail -n +2 | head -5 | cut -c68-
