/**
 * Copyright 2018 Google LLC
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

provider "random" {
  version = "~> 2.0"
}

resource "random_pet" "main" {
  length    = 1
  prefix    = "simple-example"
  separator = "-"
}

module "example" {
  source                      = "../../../examples/simple_example"
  org_id                      = var.org_id
  folder_id                   = var.folder_id
  billing_account             = var.billing_account
  bucket_name                 = var.bucket_name
  project_name                = var.project_name
  stackdriver_host_project_id = var.stackdriver_host_project_id
  region                      = var.region
  labels                      = var.labels
  credentials_path            = var.credentials_path
}
