# gm_edit

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## 予定機能
1. 通常MDの表示に対応
2. mermaid,texに対応
3. editor部分の作成
4. googleにmdをおけるようにする
5. 写真をdrive or photo から引っ張れるようにする(https://script.google.com/macros/s/AKfycbyy3vYSCzXjsIRUDMAf_f9Iq8oISly6xXJc-2g2vfRtdhnIaGE/exec)
6. 5のURL変換を自動でやってくれるようにする
7. dropboxとか？
8. pdf export

## 課題
- 改行に明確に\nいれないとだめ ← ファイル読み書き時には特に問題なし？
- texにhackmdと同じように対応させる場合文字列のエスケープ処理が必要になりそう

## べんつよ
- flutter_widgetのwidget.dartに書いてある
  - 現状重要そうなのは、
    - ```dart
      final bool selectable;
      final String? imageDirectory;
      final MarkdownTapLinkCallback? onTapLink;
      final md.ExtensionSet? extensionSet;
      ```
      あたり