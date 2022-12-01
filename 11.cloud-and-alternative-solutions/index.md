---
duration: 3 hours
---

# Cloud and alternative platforms

## Types of cloud computing

![Types of cloud computing](./assets/iaas-paas-saas.png)

## On-premise vs Cloud

- Elastic computing:
  - Cloud storage
  - Elastic compute
  - Pay at usage
- Time to market
- Total Cost of Ownership
  - It’s easy
  - It’s expensive
- Sovereignty: CLOUD Act

## Kubernetes/Cloud native

- Kubernetes-native object storage (S3-like):
  - [Rook](https://rook.io/) + [Ceph](https://ceph.io/en/)
  - [MinIO](https://min.io/)
- Kubernetes-native distributed execution engines:
  - Apache Spark
  - [Trino](https://trino.io/)
  - [Apache Arrow Ballista](https://arrow.apache.org/ballista/) (young technology)

## Solutions and tools - IaaS

- **Bare-metal** server renting to host Hadoop:
  - Private and public clouds (IBM, OVH, Scaleway)
  - Enterprise distribution (pay licenses for support)
  - Scalable but slow
- **Big Data Cloud** solutions:
  - Amazon EMR, Azure HDInsight, Google Dataproc
  - Elastic infrastructure, dynamic VM allocation
- **(New) Kubernetes-native** platform: see above

## Solutions and tools - PaaS

- **Data Warehouse** platforms: Snowflake, Teradata
- **Data Analysis** platforms: Databricks (Azure, AWS, GCP)
- **Managed Big Data** platforms: Elastic Cloud, Cloudera Data Platform

## Solutions and tools - ETL/Dataﬂow/Streaming

- **ETL**: Talend, Informatica
- **Dataflow**: Apache NiFi, StreamSets, SnapLogic
- **Messaging**: Kafka (Confluent), RabbitMQ
- **Streaming frameworks**: Spark Streaming (Databricks), Flink (Ververica), Kafka Streams (Confluent)

## Solutions and tools - BI & Monitoring

- **Business Intelligence**: Qlikview, Tableau, Power BI, MicroStrategy
- **Monitoring**: Datadog, Splunk, Prometheus, Grafana

## Solutions and tools - ML Platforms

- Dataiku
- H2O
- MLFlow (Databricks)

## What’s next in Big Data? Data mesh

[How to Move Beyond a Monolithic Data Lake to a Distributed Data Mesh](https://martinfowler.com/articles/data-monolith-to-mesh.html)
