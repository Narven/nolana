import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WindowState {
  WindowState({
    required this.isPrimaryPanelOpen,
    required this.isActivityBarOpen,
    required this.isFooterOpen,
  });

  final bool isPrimaryPanelOpen;
  final bool isActivityBarOpen;
  final bool isFooterOpen;

  WindowState copyWith({
    bool? isPrimaryPanelOpen,
    bool? isActivityBarOpen,
    bool? isFooterOpen,
  }) {
    return WindowState(
      isPrimaryPanelOpen: isPrimaryPanelOpen ?? this.isPrimaryPanelOpen,
      isActivityBarOpen: isActivityBarOpen ?? this.isActivityBarOpen,
      isFooterOpen: isFooterOpen ?? this.isFooterOpen,
    );
  }
}

class WindowStateNotifier extends StateNotifier<WindowState> {
  WindowStateNotifier()
      : super(WindowState(
          isPrimaryPanelOpen: true,
          isActivityBarOpen: true,
          isFooterOpen: true,
        ));

  void togglePrimarySidebar() {
    state = state.copyWith(isPrimaryPanelOpen: !state.isPrimaryPanelOpen);
  }

  void toggleActivityBar() {
    debugPrint('Toggle activity bar ${state.isActivityBarOpen}');
    state = state.copyWith(isActivityBarOpen: !state.isActivityBarOpen);
  }

  void toggleFooter() {
    state = state.copyWith(isFooterOpen: !state.isFooterOpen);
  }
}

final windowStateProvider =
    StateNotifierProvider<WindowStateNotifier, WindowState>((ref) {
  return WindowStateNotifier();
});
