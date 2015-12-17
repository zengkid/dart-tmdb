// Copyright (c) 2015, Josep Sayol. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

part of tmdb.core;

/// Handles the 'Find' API calls
class Find {
  final TMDBApiCore _core;

  Find(this._core);

  /// The find method makes it easy to search for objects in the database by an external id.
  ///
  /// For instance, an IMDB ID. This will search all objects (movies, TV shows and people) and return the results in a single response.
  ///
  /// The supported external sources for each object are as follows:
  /// * Movies: imdb_id
  /// * People: imdb_id, freebase_mid, freebase_id, tvrage_id
  /// * TV Series: imdb_id, freebase_mid, freebase_id, tvdb_id, tvrage_id
  /// * TV Seasons: freebase_mid, freebase_id, tvdb_id, tvrage_id
  /// * TV Episodes: imdb_id, freebase_mid, freebase_id, tvdb_id, tvrage_id
  ///     // Find a movie via an IMDb ID
  ///     Map movie = await tmdb.find.byId('tt0088763', 'imdb_id');
  ///
  ///     // Find a person via a Freebase MID
  ///     Map person = await tmdb.find.byId('m/0hz_1', 'freebase_mid');
  Future<Map> byId(String id, String source) {
    Map params = {};
    _checkNotNull(id, 'id');
    _checkNotNull(source, 'source');
    _addParam(params, 'external_source', value: source);
    return _core.doQuery('find/$id', params: params);
  }
}