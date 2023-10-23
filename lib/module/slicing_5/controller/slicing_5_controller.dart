
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/slicing_5_view.dart';

class Slicing5Controller extends State<Slicing5View> {
    static late Slicing5Controller instance;
    late Slicing5View view;

    @override
    void initState() {
        instance = this;
        super.initState();
    }

    @override
    void dispose() => super.dispose();

    @override
    Widget build(BuildContext context) => widget.build(context, this);
}
        
    