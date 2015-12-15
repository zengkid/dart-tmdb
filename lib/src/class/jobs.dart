// Copyright (c) 2015, Josep Sayol. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of tmdb.core;

/// Handles the 'Jobs' API calls
class _Jobs {
  final TmdbApiCore _core;

  _Jobs(this._core);

  /// Retrieves xxxx
  ///
  ///     Map result = tmdbApi.jobs.get();
  get() {
    return _core;
  }
}
