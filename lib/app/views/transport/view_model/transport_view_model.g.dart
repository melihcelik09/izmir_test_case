// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transport_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TransportViewModel on TransportViewModelBase, Store {
  late final _$nearbyStopsAtom =
      Atom(name: 'TransportViewModelBase.nearbyStops', context: context);

  @override
  ObservableList<NearbyStopsModel> get nearbyStops {
    _$nearbyStopsAtom.reportRead();
    return super.nearbyStops;
  }

  @override
  set nearbyStops(ObservableList<NearbyStopsModel> value) {
    _$nearbyStopsAtom.reportWrite(value, super.nearbyStops, () {
      super.nearbyStops = value;
    });
  }

  late final _$lineInfosAtom =
      Atom(name: 'TransportViewModelBase.lineInfos', context: context);

  @override
  ObservableList<PassingLinesModel> get lineInfos {
    _$lineInfosAtom.reportRead();
    return super.lineInfos;
  }

  @override
  set lineInfos(ObservableList<PassingLinesModel> value) {
    _$lineInfosAtom.reportWrite(value, super.lineInfos, () {
      super.lineInfos = value;
    });
  }

  late final _$uniqueLinesAtom =
      Atom(name: 'TransportViewModelBase.uniqueLines', context: context);

  @override
  ObservableSet<int> get uniqueLines {
    _$uniqueLinesAtom.reportRead();
    return super.uniqueLines;
  }

  @override
  set uniqueLines(ObservableSet<int> value) {
    _$uniqueLinesAtom.reportWrite(value, super.uniqueLines, () {
      super.uniqueLines = value;
    });
  }

  late final _$linesAtom =
      Atom(name: 'TransportViewModelBase.lines', context: context);

  @override
  ObservableList<LinesModel> get lines {
    _$linesAtom.reportRead();
    return super.lines;
  }

  @override
  set lines(ObservableList<LinesModel> value) {
    _$linesAtom.reportWrite(value, super.lines, () {
      super.lines = value;
    });
  }

  late final _$fetchNearbyStopsAsyncAction =
      AsyncAction('TransportViewModelBase.fetchNearbyStops', context: context);

  @override
  Future<ObservableList<NearbyStopsModel>> fetchNearbyStops() {
    return _$fetchNearbyStopsAsyncAction.run(() => super.fetchNearbyStops());
  }

  late final _$fetchLineInfoDetailAsyncAction = AsyncAction(
      'TransportViewModelBase.fetchLineInfoDetail',
      context: context);

  @override
  Future<List<LinesModel>?> fetchLineInfoDetail({int? routeNumber}) {
    return _$fetchLineInfoDetailAsyncAction
        .run(() => super.fetchLineInfoDetail(routeNumber: routeNumber));
  }

  late final _$TransportViewModelBaseActionController =
      ActionController(name: 'TransportViewModelBase', context: context);

  @override
  dynamic createLineInfos() {
    final _$actionInfo = _$TransportViewModelBaseActionController.startAction(
        name: 'TransportViewModelBase.createLineInfos');
    try {
      return super.createLineInfos();
    } finally {
      _$TransportViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nearbyStops: ${nearbyStops},
lineInfos: ${lineInfos},
uniqueLines: ${uniqueLines},
lines: ${lines}
    ''';
  }
}
