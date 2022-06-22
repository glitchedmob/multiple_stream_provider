import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:multiple_stream_builder/multiple_stream_builder.dart';

void main() {
  var streamController1 = StreamController<int>();
  var streamController2 = StreamController<int>();
  var streamController3 = StreamController<int>();
  var streamController4 = StreamController<int>();
  var streamController5 = StreamController<int>();
  var streamController6 = StreamController<int>();
  var streamController7 = StreamController<int>();
  var streamController8 = StreamController<int>();
  var streamController9 = StreamController<int>();

  var snapshot1Values = <int?>[];
  var snapshot2Values = <int?>[];
  var snapshot3Values = <int?>[];
  var snapshot4Values = <int?>[];
  var snapshot5Values = <int?>[];
  var snapshot6Values = <int?>[];
  var snapshot7Values = <int?>[];
  var snapshot8Values = <int?>[];
  var snapshot9Values = <int?>[];

  setUp(() {
    streamController1 = StreamController<int>();
    streamController2 = StreamController<int>();
    streamController3 = StreamController<int>();
    streamController4 = StreamController<int>();
    streamController5 = StreamController<int>();
    streamController6 = StreamController<int>();
    streamController7 = StreamController<int>();
    streamController8 = StreamController<int>();
    streamController9 = StreamController<int>();

    snapshot1Values = <int?>[];
    snapshot2Values = <int?>[];
    snapshot3Values = <int?>[];
    snapshot4Values = <int?>[];
    snapshot5Values = <int?>[];
    snapshot6Values = <int?>[];
    snapshot7Values = <int?>[];
    snapshot8Values = <int?>[];
    snapshot9Values = <int?>[];
  });

  testWidgets('StreamBuilder9 rebuilds with stream updates', (tester) async {
    await tester.pumpWidget(
      StreamBuilder9<int, int, int, int, int, int, int, int, int>(
        streams: StreamTuple9(
          streamController1.stream,
          streamController2.stream,
          streamController3.stream,
          streamController4.stream,
          streamController5.stream,
          streamController6.stream,
          streamController7.stream,
          streamController8.stream,
          streamController9.stream,
        ),
        builder: (context, snapshots) {
          snapshot1Values.add(snapshots.snapshot1.data);
          snapshot2Values.add(snapshots.snapshot2.data);
          snapshot3Values.add(snapshots.snapshot3.data);
          snapshot4Values.add(snapshots.snapshot4.data);
          snapshot5Values.add(snapshots.snapshot5.data);
          snapshot6Values.add(snapshots.snapshot6.data);
          snapshot7Values.add(snapshots.snapshot7.data);
          snapshot8Values.add(snapshots.snapshot8.data);
          snapshot9Values.add(snapshots.snapshot9.data);
          return Container();
        },
      ),
    );

    expect(snapshot1Values, equals([null]));
    expect(snapshot2Values, equals([null]));
    expect(snapshot3Values, equals([null]));
    expect(snapshot4Values, equals([null]));
    expect(snapshot5Values, equals([null]));
    expect(snapshot6Values, equals([null]));
    expect(snapshot7Values, equals([null]));
    expect(snapshot8Values, equals([null]));
    expect(snapshot9Values, equals([null]));

    streamController1.add(1);
    streamController2.add(2);
    streamController3.add(3);
    streamController4.add(4);
    streamController5.add(5);
    streamController6.add(6);
    streamController7.add(7);
    streamController8.add(8);
    streamController9.add(9);

    await tester.pumpAndSettle();

    expect(snapshot1Values, equals([null, 1]));
    expect(snapshot2Values, equals([null, 2]));
    expect(snapshot3Values, equals([null, 3]));
    expect(snapshot4Values, equals([null, 4]));
    expect(snapshot5Values, equals([null, 5]));
    expect(snapshot6Values, equals([null, 6]));
    expect(snapshot7Values, equals([null, 7]));
    expect(snapshot8Values, equals([null, 8]));
    expect(snapshot9Values, equals([null, 9]));
  });

  testWidgets('StreamBuilder9 handles initialData', (tester) async {
    await tester.pumpWidget(
      StreamBuilder9<int, int, int, int, int, int, int, int, int>(
        streams: StreamTuple9(
          streamController1.stream,
          streamController2.stream,
          streamController3.stream,
          streamController4.stream,
          streamController5.stream,
          streamController6.stream,
          streamController7.stream,
          streamController8.stream,
          streamController9.stream,
        ),
        initialData: InitialDataTuple9(1, 2, 3, 4, 5, 6, 7, 8, 9),
        builder: (context, snapshots) {
          snapshot1Values.add(snapshots.snapshot1.data);
          snapshot2Values.add(snapshots.snapshot2.data);
          snapshot3Values.add(snapshots.snapshot3.data);
          snapshot4Values.add(snapshots.snapshot4.data);
          snapshot5Values.add(snapshots.snapshot5.data);
          snapshot6Values.add(snapshots.snapshot6.data);
          snapshot7Values.add(snapshots.snapshot7.data);
          snapshot8Values.add(snapshots.snapshot8.data);
          snapshot9Values.add(snapshots.snapshot9.data);
          return Container();
        },
      ),
    );

    expect(snapshot1Values, equals([1]));
    expect(snapshot2Values, equals([2]));
    expect(snapshot3Values, equals([3]));
    expect(snapshot4Values, equals([4]));
    expect(snapshot5Values, equals([5]));
    expect(snapshot6Values, equals([6]));
    expect(snapshot7Values, equals([7]));
    expect(snapshot8Values, equals([8]));
    expect(snapshot9Values, equals([9]));

    streamController1.add(1);
    streamController2.add(2);
    streamController3.add(3);
    streamController4.add(4);
    streamController5.add(5);
    streamController6.add(6);
    streamController7.add(7);
    streamController8.add(8);
    streamController9.add(9);

    await tester.pumpAndSettle();

    expect(snapshot1Values, equals([1, 1]));
    expect(snapshot2Values, equals([2, 2]));
    expect(snapshot3Values, equals([3, 3]));
    expect(snapshot4Values, equals([4, 4]));
    expect(snapshot5Values, equals([5, 5]));
    expect(snapshot6Values, equals([6, 6]));
    expect(snapshot7Values, equals([7, 7]));
    expect(snapshot8Values, equals([8, 8]));
    expect(snapshot9Values, equals([9, 9]));
  });
}
