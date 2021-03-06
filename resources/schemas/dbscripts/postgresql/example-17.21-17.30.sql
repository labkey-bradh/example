/*
 * Copyright (c) 2017 LabKey Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

-- Create schema, tables, indexes, and constraints used for example module here
-- All SQL VIEW definitions should be created in example-create.sql and dropped in example-drop.sql
CREATE SCHEMA example;

CREATE TABLE example.member
(
  -- standard fields
  _ts TIMESTAMP DEFAULT now(),
  RowId SERIAL,
  CreatedBy USERID,
  Created TIMESTAMP,
  ModifiedBy USERID,
  Modified TIMESTAMP,
  Owner USERID NULL,

  -- other fields
  Container ENTITYID NOT NULL,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Age INT NULL,

  CONSTRAINT PK_Member PRIMARY KEY (RowId)
);
