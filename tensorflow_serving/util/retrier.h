/* Copyright 2017 Google Inc. All Rights Reserved.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/

#ifndef TENSORFLOW_SERVING_UTIL_RETRIER_H_
#define TENSORFLOW_SERVING_UTIL_RETRIER_H_

#include <functional>
#include <string>

#include "absl/status/status.h"
#include "tensorflow/core/lib/core/status.h"

namespace tensorflow {
namespace serving {

// Tries running 'retried_fn' once, and if it doesn't succeed, retries running
// the 'retried_fn' till it returns an ok status or max_num_retries are
// exhausted or should_retry() returns false. Each retry is attempted after an
// interval of 'retry_interval_micros'. The 'description' is useful for logging.
//
// Returns the status returned by the last call to 'retried_fn'.
absl::Status Retry(
    const string& description, uint32 max_num_retries,
    int64_t retry_interval_micros,
    const std::function<absl::Status()>& retried_fn,
    const std::function<bool(absl::Status)>& should_retry =
        [](absl::Status status) { return true; });

}  // namespace serving
}  // namespace tensorflow

#endif  // TENSORFLOW_SERVING_UTIL_RETRIER_H_
