
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/slicing_6_view.dart';

class Slicing6Controller extends State<Slicing6View> {
    static late Slicing6Controller instance;
    late Slicing6View view;

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
        
    