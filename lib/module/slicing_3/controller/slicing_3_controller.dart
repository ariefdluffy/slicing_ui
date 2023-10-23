
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/slicing_3_view.dart';

class Slicing3Controller extends State<Slicing3View> {
    static late Slicing3Controller instance;
    late Slicing3View view;

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
        
    