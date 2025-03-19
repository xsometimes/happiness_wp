import 'package:flutter/material.dart';
export './meow_text_field.dart';

class MeowForm extends StatefulWidget {
  final Widget child;
  final GlobalKey<FormState>? formKey;

  const MeowForm({
    super.key,
    required this.child,
    this.formKey,
  });

  @override
  State<MeowForm> createState() => _MeowFormState();
}

class _MeowFormState extends State<MeowForm> {
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    _formKey = widget.formKey ?? GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: widget.child,
    );
  }
}

