
import 'package:flutter/material.dart';
import 'package:slicing_ui2/core.dart';
import '../view/slicing_4_view.dart';

class Slicing4Controller extends State<Slicing4View> {
    static late Slicing4Controller instance;
    late Slicing4View view;

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
        
    