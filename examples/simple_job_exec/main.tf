/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

module "job" {
  source  = "GoogleCloudPlatform/cloud-run/google//modules/job-exec"
  version = "~> 0.16"

  project_id = var.project_id
  name       = "simple-job"
  location   = "us-central1"
  image      = "us-docker.pkg.dev/cloudrun/container/job"
  exec       = true

  cloud_run_deletion_protection = var.cloud_run_deletion_protection
}
