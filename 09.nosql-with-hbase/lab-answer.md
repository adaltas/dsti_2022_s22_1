# Big Data Ecosystem

## HBase: Rowkey and Table Design

## Design the HBase table for Messenger

We want to store Facebook Messenger messages using HBase:

1. Define the HBase table data structure: column families and columns
   ```js
   {
   	 message: {
   		 text: 'Hello',
   		 image: 's3://facebook/messenger/img/ab4f63f9ac65152575886860dde480a1',
   		 gif: 'https://giphy.com/gifs/nhl-sports-hockey-fan-t3sZxY5zS5B0z5zMIz'
   	 },
   	 reactions: {
   	     😆: [user_id_1, user_id_2],
   	     😍: [user_id_3]
   	 }
   }
   ```
2. Define the rowkey to easily retrieve messages AND avoid hotspotting
   ```python
   md5(
   	 ','.join(sorted([user_id_1, user_id_2, user_id_3]))
   ) + timestamp + sender_id
   ```
