import 'package:flutter/material.dart';

class BaseView<T extends Store> extends StatefulWidget {
  const BaseView({
    super.key,
    required this.onModelReady,
    this.dispose,
    this.onRefresh,
    required this.model,
    required this.builder,
  });

  final T model;
  final Widget Function(BuildContext context, T value) builder;

  final void Function(T model) onModelReady;
  final VoidCallback? dispose;
  final VoidCallback? onRefresh;

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

class _BaseViewState<T extends Store> extends State<BaseView<T>> {
  late T model;

  @override
  void initState() {
    model = widget.model;
    // what is this
    widget.onModelReady(model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, model);
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.dispose != null) {
      widget.dispose!();
    }
  }
}
