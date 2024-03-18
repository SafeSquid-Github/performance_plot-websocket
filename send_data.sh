#!/bin/bash

tail -F /var/log/safesquid/performance/performance.log | awk -F, '{
    printf "{"
    printf "\"Time Stamp (YYYYMMDDhhmmss)\": \"%s\", ", $1
    printf "\"Elapsed Time\": %s, ", $2
    printf "\"Client Connections Handled\": %s, ", $3
    printf "\"Client Connections Closed\": %s, ", $4
    printf "\"Client Transactions Handled\": %s, ", $5
    printf "\"Client Connections in Pool\": %s, ", $6
    printf "\"Spare Client Threads\": %s, ", $7
    printf "\"Client Threads in Use\": %s, ", $8
    printf "\"Client Threads in Waiting\": %s, ", $9
    printf "\"Threads Starting up\": %s, ", $10
    printf "\"Threads Reserved for Prefetching\": %s, ", $11
    printf "\"Threading Errors\": %s, ", $12
    printf "\"Outbound Connections created\": %s, ", $13
    printf "\"Outbound Connections Failed\": %s, ", $14
    printf "\"Outbound Connection Pool Reused\": %s, ", $15
    printf "\"Outbound Connections in Pool\": %s, ", $16
    printf "\"Bytes in (KBytes)\": %s, ", $17
    printf "\"Bytes Out (KBytes)\": %s, ", $18
    printf "\"Caching Objects Created in Memory\": %s, ", $19
    printf "\"Caching Objects Removed from Memory\": %s, ", $20
    printf "\"DNS Queries Reused\": %s, ", $21
    printf "\"New DNS Queries\": %s, ", $22
    printf "\"DNS Query failures\": %s, ", $23
    printf "\"Total System Memory (KBytes)\": %s, ", $24
    printf "\"Free System Memory (KBytes)\": %s, ", $25
    printf "\"SafeSquid Virtual Memory (KBytes)\": %s, ", $26
    printf "\"SafeSquid Resident Memory (KBytes)\": %s, ", $27
    printf "\"SafeSquid Shared Memory (KBytes)\": %s, ", $28
    printf "\"SafeSquid Code Memory (KBytes)\": %s, ", $29
    printf "\"SafeSquid Data Memory (KBytes)\": %s, ", $30
    printf "\"SafeSquid Library Memory (KBytes)\": %s, ", $31
    printf "\"Connections Handled Delta\": %s, ", $32
    printf "\"Connections Closed Delta\": %s, ", $33
    printf "\"Transactions Handled Delta\": %s, ", $34
    printf "\"Client Pool Delta\": %s, ", $35
    printf "\"Spare Threads Delta\": %s, ", $36
    printf "\"Active Threads Delta\": %s, ", $37
    printf "\"Threads Waiting Delta\": %s, ", $38
    printf "\"Threads Starting up Delta\": %s, ", $39
    printf "\"Threads Prefetching Delta\": %s, ", $40
    printf "\"Threading Errors Delta\": %s, ", $41
    printf "\"Outbound Connections created Delta\": %s, ", $42
    printf "\"Outbound Connections Failed Delta\": %s, ", $43
    printf "\"Outbound Connection Pool Reused Delta\": %s, ", $44
    printf "\"Outbound Connections in Pool Delta\": %s, ", $45
    printf "\"Bytes in (KBytes) Delta\": %s, ", $46
    printf "\"Bytes Out (KBytes) Delta\": %s, ", $47
    printf "\"Caching Objects Created in Memory Delta\": %s, ", $48
    printf "\"Caching Objects Removed from Memory Delta\": %s, ", $49
    printf "\"DNS Queries Reused Delta\": %s, ", $50
    printf "\"New DNS Queries Delta\": %s, ", $51
    printf "\"DNS Query failures Delta\": %s, ", $52
    printf "\"load avg.(1 min)\": %s, ", $53
    printf "\"load avg.(5 min)\": %s, ", $54
    printf "\"load avg.(15 min)\": %s, ", $55
    printf "\"Running Processes\": %s, ", $56
    printf "\"Waiting Processes\": %s, ", $57
    printf "\"User Time\": %s, ", $58
    printf "\"System Time\": %s, ", $59
    printf "\"Total (user + system) Time\": %s, ", $60
    printf "\"User Time Delta\": %s, ", $61
    printf "\"System Time Delta\": %s, ", $62
    printf "\"Total Time Delta\": %s ", $63
    printf "}\n"
}'
