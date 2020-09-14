#! /bin/bash
cat smol.json | sed 's/^/"/' | sed 's/$/",/' > smolled.json
