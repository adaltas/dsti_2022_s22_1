# Big Data Ecosystem

## HBase: Rowkey and Table Design

### Goals

Understand NoSQL key design problematics for sharded databases.

## Design the HBase table for Messenger

We want to store Facebook Messenger messages using HBase:

1. Define the HBase table data structure: column families and columns
2. Define the rowkey to easily retrieve messages AND avoid hotspotting
