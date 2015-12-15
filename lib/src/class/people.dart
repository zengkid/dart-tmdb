// Copyright (c) 2015, Josep Sayol. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of tmdb.core;

/// Handles the 'People' API calls
class _People {
  final TmdbApiCore _core;

  _People(this._core);

  /// Retrieves xxxx
  ///
  ///     Map result = tmdbApi.people.get();
  get() {
    return _core;
  }
}