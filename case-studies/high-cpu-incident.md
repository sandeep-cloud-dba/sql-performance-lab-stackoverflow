# High CPU Incident Case Study

## Problem
SQL Server CPU at 95% during peak hours.

## Investigation
- Analyzed wait stats
- Found high CXPACKET
- Identified missing index

## Solution
- Adjusted MAXDOP
- Created covering index

## Result
CPU reduced by 40%.

