-- Copyright 2021 Google LLC
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     https://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

SELECT
  ProcID,
  CollectTimeStamp AT TIME ZONE INTERVAL '0:00' HOUR TO MINUTE AS CollectTimeStamp,
  QueryID,
  UserID,
  UserName,
  DefaultDatabase,
  AcctString,
  ExpandAcctString,
  SessionID,
  LogicalHostID,
  LogonDateTime AT TIME ZONE INTERVAL '0:00' HOUR TO MINUTE AS LogonDateTime,
  LogonSource,
  AppID,
  ClientID,
  ClientAddr,
  QueryText,
  StatementType,
  StatementGroup,
  StartTime AT TIME ZONE INTERVAL '0:00' HOUR TO MINUTE AS StartTime,
  FirstRespTime AT TIME ZONE INTERVAL '0:00' HOUR TO MINUTE AS FirstRespTime,
  FirstStepTime AT TIME ZONE INTERVAL '0:00' HOUR TO MINUTE AS FirstStepTime,
  NumResultRows,
  AMPCPUTime,
  AMPCPUTimeNorm,
  NumOfActiveAmps,
  MaxStepMemory,
  TotalIOCount
FROM DBC.QryLog