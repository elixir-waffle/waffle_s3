# Waffle for AWS S3

Waffle is a flexible file upload library for Elixir. This is an integration module for Waffle and AWS S3.

[Documentation](https://hexdocs.pm/waffle_s3)

## Usage

An example for setting up `Waffle.Storage.S3` (`config.exs`):

```
config :waffle,
  storage: Waffle.Storage.S3,
  bucket: "custom_bucket",                # or {:system, "AWS_S3_BUCKET"}
  asset_host: "http://static.example.com" # or {:system, "ASSET_HOST"}

config :ex_aws,
  json_codec: Jason
  # any configurations provided by https://github.com/ex-aws/ex_aws
```

## License

Copyright 2019 Boris Kuznetsov <me@achempion.com>

Copyright 2015 Sean Stavropoulos

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
