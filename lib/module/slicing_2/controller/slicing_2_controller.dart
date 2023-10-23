
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/slicing_2_view.dart';

class Slicing2Controller extends State<Slicing2View> {
    static late Slicing2Controller instance;
    late Slicing2View view;

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
        
    