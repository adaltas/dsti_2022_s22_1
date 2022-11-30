# Big Data Ecosystem

## Lab 5: Oozie

### Goals

Chain the Hive actions done in [lab4.1](../04.data-warehousing-with-hive/lab-1.md) using Oozie.

### Ressources

The Oozie workflow is composed of:

- The `workflow.xml` that contains the DAG of actions to be run (you will have to complete this file)
- The `job.properties` file that contains the job properties, you will have to modify some of them
- The `scripts` folder that will contain our Hive scripts

### Useful links

- [Oozie documentation](https://oozie.apache.org/docs/4.3.1/)
- [Oozie Hive2 Action](https://oozie.apache.org/docs/4.3.1/DG_Hive2ActionExtension.html)

### How to run a workflow

1. Put the workflow folder in HDFS (in your user directory for example)
   ```bash
   hdfs dfs -put -f oozie_wf/ "/user/$USER"
   ```
2. Submit the job using the `oozie` CLI
   ```bash
   oozie job -run -config oozie_wf/job.properties -oozie http://oozie-1.au.adaltas.cloud:11000/oozie
   ```
3. To get the status of the job from the `oozie` CLI

   ```sh
   oozie job -info 0000040-201011090406050-oozie-oozi-W -oozie http://oozie-1.au.adaltas.cloud:11000/oozie
   ...
   Actions
   ------------------------------------------------------------------------------------------------------------------------------------
   ID                                                                            Status    Ext ID                 Ext Status Err Code
   ------------------------------------------------------------------------------------------------------------------------------------
   0000003-210916172301405-oozie-oozi-W@:start:                                  OK        -                      OK         -
   ------------------------------------------------------------------------------------------------------------------------------------
   0000003-210916172301405-oozie-oozi-W@create-csv-table                         OK        job_1631812995637_0402 SUCCEEDED  -
   ```

4. To get the logs of one action from the `yarn` CLI
   1. Get the job ID from the oozie command of step 3. (e.g. `job_1631812995637_0402`)
   2. Replace `job` by `application` (e.g. `application_1631812995637_0402`)
   3. Use `yarn logs` to get the logs from `stderr`:
      ```sh
      yarn logs -applicationId application_1631812995637_0402 -log_files 'stderr'
      Container: container_e54_1631812995637_0402_01_000002 on wrk-1.au.adaltas.cloud_45454_1634646632767
      LogAggregationType: AGGREGATED
      ===================================================================================================
      LogType:stderr
      LogLastModifiedTime:Tue Oct 19 12:30:32 +0000 2021
      LogLength:3279
      LogContents:
      SLF4J: Class path contains multiple SLF4J bindings.
      ...
      ```

### TO DO

1. Adapt the `job.properties` to your username
3. Run the job
4. Make sure there are no errors
5. Add actions to the workflow:
   1. Create the ORC drivers table
   2. Insert data from the CSV table to the ORC table

**Tip:** To edit the workflow, the easiest setup is: 

- `git clone` the repo to your PC,

- Create/edit files using an IDE (e.g. VSCode)

- Push the updated workflow to the edge server:

  ```bash
  clusterUsername=gauthier
  scp -r oozie_wf $clusterUsername@edge-1.au.adaltas.cloud:/home/$clusterUsername
  ```

- And put the workflow in HDFS:

  ```bash
  hdfs dfs -put -f oozie_wf/ "/user/$USER"
  ```

  

