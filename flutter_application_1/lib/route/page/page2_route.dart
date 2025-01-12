import 'package:flutter/material.dart';
import 'package:flutter_application_1/route/page/controller/page2_route_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Page2Route extends StatelessWidget {
  OverlayEntry? overlayEntry;
  final LayerLink _layerLink = LayerLink();
  Page2Route({super.key});

  void showOverlay(BuildContext context) {
    overlayEntry = OverlayEntry(builder: (context) {
      return Stack(
        children: [
          GestureDetector(
            onTap: () {
              // 오버레이 닫기
              overlayEntry?.remove();
              overlayEntry = null;
            },
          ),
          CompositedTransformFollower(
            offset: const Offset(25, 60),
            link: _layerLink,
            child: GestureDetector(
              onTap: () {
                // 오버레이 닫기
                overlayEntry?.remove();
                overlayEntry = null;
              },
              child: Material(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Text(
                    '오버레이 입니다',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
    Overlay.of(context).insert(overlayEntry!);
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Page2RouteController>(
      init: Page2RouteController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: CompositedTransformTarget(
                link: _layerLink,
                child: ElevatedButton(
                    onPressed: () {
                      if (overlayEntry == null) {
                        showOverlay(context);
                      } else {
                        overlayEntry?.remove();
                        overlayEntry = null;
                      }
                    },
                    child: const Text('show Overlay')),
              ),
            ),
          ),
        );
      },
    );
  }
}
