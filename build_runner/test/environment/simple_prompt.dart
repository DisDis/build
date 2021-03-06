// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:build_runner/build_runner.dart';
import 'package:logging/logging.dart';

import 'package:build_runner/src/environment/io_environment.dart';

main() async {
  var env = new IOEnvironment(new PackageGraph.forThisPackage(), true);
  var result = await env.prompt('Select an option!', ['a', 'b', 'c']);
  Logger.root.onRecord.listen(env.onLog);
  new Logger('Simple Logger').info(result);
}
