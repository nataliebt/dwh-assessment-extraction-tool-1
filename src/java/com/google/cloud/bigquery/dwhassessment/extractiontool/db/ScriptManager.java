/*
 * Copyright 2021 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.google.cloud.bigquery.dwhassessment.extractiontool.db;

import com.google.cloud.bigquery.dwhassessment.extractiontool.dumper.DataEntityManager;
import com.google.common.collect.ImmutableSet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/** Interface to manage SQL scripts. */
public interface ScriptManager {

  /**
   * Executes a script against a DB connection and writes the output to a stream.
   *
   * @param connection The JDBC connection to the database.
   * @param scriptName The name of the script. This is not a file name. The interpretation of the
   *     name is left to the implementation but can also map to several files (e.g., an SQL file and
   *     a schema definition file).
   * @param dataEntityManager The data entity manager to use to write the output.
   */
  void executeScript(Connection connection, String scriptName, DataEntityManager dataEntityManager)
      throws SQLException, IOException;

  /** Gets a list of names of all available scripts. */
  ImmutableSet<String> getAllScriptNames();

  /** Gets a SQL script based on a script name. */
  String getScript(String scriptName);
}
