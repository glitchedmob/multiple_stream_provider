import 'package:flutter/widgets.dart';
import 'package:multiple_stream_builder/src/multiple_stream_builder.dart';

class StreamTuple2<T1, T2> {
  final Stream<T1> stream1;
  final Stream<T2> stream2;

  StreamTuple2(
    this.stream1,
    this.stream2,
  );
}

class SnapshotTuple2<T1, T2> {
  final AsyncSnapshot<T1> snapshot1;
  final AsyncSnapshot<T2> snapshot2;

  SnapshotTuple2(
    this.snapshot1,
    this.snapshot2,
  );
}

class InitialDataTuple2<T1, T2> {
  final T1? data1;
  final T2? data2;

  InitialDataTuple2([
    this.data1,
    this.data2,
  ]);
}

typedef AsyncWidgetBuilder2<T1, T2> = Widget Function(
  BuildContext context,
  SnapshotTuple2<T1, T2> snapshots,
);

/// Wraps the normal [StreamBuilder] widget to allow 2 streams in
/// in the form of a [StreamTuple2]. Can also accept multiple values for
/// [initialData] using a [InitialDataTuple2].
class StreamBuilder2<T1, T2> extends StatelessWidget {
  final StreamTuple2<T1, T2> streams;
  final AsyncWidgetBuilder2<T1, T2> builder;
  final InitialDataTuple2<T1, T2>? initialData;

  const StreamBuilder2({
    Key? key,
    this.initialData,
    required this.streams,
    required this.builder,
  }) : super(key: key);

  @override
  Widget build(BuildContext _) {
    return MultipleStreamBuilder<
        T1,
        T2,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic,
        dynamic>(
      streams: StreamTuple(
        streams.stream1,
        streams.stream2,
      ),
      initialData: InitialDataTuple(
        initialData?.data1,
        initialData?.data2,
      ),
      builder: (context, snapshots) {
        return builder(
          context,
          SnapshotTuple2(
            snapshots.snapshot1!,
            snapshots.snapshot2!,
          ),
        );
      },
    );
  }
}
