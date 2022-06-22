import 'package:flutter/widgets.dart';
import 'package:multiple_stream_builder/src/multiple_stream_builder.dart';

class StreamTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> {
  final Stream<T1> stream1;
  final Stream<T2> stream2;
  final Stream<T3> stream3;
  final Stream<T4> stream4;
  final Stream<T5> stream5;
  final Stream<T6> stream6;
  final Stream<T7> stream7;
  final Stream<T8> stream8;
  final Stream<T9> stream9;
  final Stream<T10> stream10;
  final Stream<T11> stream11;
  final Stream<T12> stream12;

  StreamTuple12(
    this.stream1,
    this.stream2,
    this.stream3,
    this.stream4,
    this.stream5,
    this.stream6,
    this.stream7,
    this.stream8,
    this.stream9,
    this.stream10,
    this.stream11,
    this.stream12,
  );
}

class SnapshotTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> {
  final AsyncSnapshot<T1> snapshot1;
  final AsyncSnapshot<T2> snapshot2;
  final AsyncSnapshot<T3> snapshot3;
  final AsyncSnapshot<T4> snapshot4;
  final AsyncSnapshot<T5> snapshot5;
  final AsyncSnapshot<T6> snapshot6;
  final AsyncSnapshot<T7> snapshot7;
  final AsyncSnapshot<T8> snapshot8;
  final AsyncSnapshot<T9> snapshot9;
  final AsyncSnapshot<T10> snapshot10;
  final AsyncSnapshot<T11> snapshot11;
  final AsyncSnapshot<T12> snapshot12;

  SnapshotTuple12(
    this.snapshot1,
    this.snapshot2,
    this.snapshot3,
    this.snapshot4,
    this.snapshot5,
    this.snapshot6,
    this.snapshot7,
    this.snapshot8,
    this.snapshot9,
    this.snapshot10,
    this.snapshot11,
    this.snapshot12,
  );
}

class InitialDataTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> {
  final T1? data1;
  final T2? data2;
  final T3? data3;
  final T4? data4;
  final T5? data5;
  final T6? data6;
  final T7? data7;
  final T8? data8;
  final T9? data9;
  final T10? data10;
  final T11? data11;
  final T12? data12;

  InitialDataTuple12([
    this.data1,
    this.data2,
    this.data3,
    this.data4,
    this.data5,
    this.data6,
    this.data7,
    this.data8,
    this.data9,
    this.data10,
    this.data11,
    this.data12,
  ]);
}

typedef AsyncWidgetBuilder12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
    = Widget Function(
  BuildContext context,
  SnapshotTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> snapshots,
);

/// Wraps the normal [StreamBuilder] widget to allow 12 streams in
/// in the form of a [StreamTuple12]. Can also accept multiple values for
/// [initialData] using a [InitialDataTuple12].
class StreamBuilder12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
    extends StatelessWidget {
  final StreamTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
      streams;
  final AsyncWidgetBuilder12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>
      builder;
  final InitialDataTuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>?
      initialData;

  const StreamBuilder12({
    Key? key,
    this.initialData,
    required this.streams,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext _) {
    return MultipleStreamBuilder<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11,
        T12, dynamic, dynamic, dynamic>(
      streams: StreamTuple(
        streams.stream1,
        streams.stream2,
        streams.stream3,
        streams.stream4,
        streams.stream5,
        streams.stream6,
        streams.stream7,
        streams.stream8,
        streams.stream9,
        streams.stream10,
        streams.stream11,
        streams.stream12,
      ),
      initialData: InitialDataTuple(
        initialData?.data1,
        initialData?.data2,
        initialData?.data3,
        initialData?.data4,
        initialData?.data5,
        initialData?.data6,
        initialData?.data7,
        initialData?.data8,
        initialData?.data9,
        initialData?.data10,
        initialData?.data11,
        initialData?.data12,
      ),
      builder: (context, snapshots) {
        return builder(
          context,
          SnapshotTuple12(
            snapshots.snapshot1!,
            snapshots.snapshot2!,
            snapshots.snapshot3!,
            snapshots.snapshot4!,
            snapshots.snapshot5!,
            snapshots.snapshot6!,
            snapshots.snapshot7!,
            snapshots.snapshot8!,
            snapshots.snapshot9!,
            snapshots.snapshot10!,
            snapshots.snapshot11!,
            snapshots.snapshot12!,
          ),
        );
      },
    );
  }
}
