[English](README.md)

# Live Memo

Ableton Liveのデバイス欄に置く、メモ欄だけのMax for Liveオーディオエフェクトです。Live 11 Suite向けに作成。幅260pxで、外部ファイルへの依存はありません。

**バージョン0.1.0：試作・実機未検証。** [ダウンロード](https://github.com/aoe1928/live-memo/releases/tag/v0.1.0)

Live Suite、またはLive Standard＋Max for Liveが必要です。標準部品だけなのでWindows・macOS（対応するLive／Max環境のIntel／Apple Silicon）を想定していますが、どちらも実機未検証です。Macでは指定フォントYu Gothic UIが代替され、折り返し位置などが変わる可能性があります。単独アプリやLogic用プラグインではありません。

## 使い方

1. `Live Memo.amxd`をオーディオエフェクト欄にドラッグします。MIDIトラックでは音源の後ろに置きます。
2. 空欄をクリックして入力します。Enterで改行し、長い行は折り返します。
3. Tabまたは欄の外のクリックで編集を終え、Ctrl+SでLiveセットを保存します。

メモをセット内に保存するBlobパラメーター設定です。独立したファイルへの自動保存ではありません。音声の左右は入力から出力へ直結しています。

## 検証状況・制限

AMXDヘッダー、データ長、JSON、左右の音声配線、保存パラメーター設定を確認しました。Liveへの読み込み、日本語IME入力、長文のスクロール、音声再生、セット再読込時の復元は**実機未検証**です。実用前に、テスト用セットで複数行の日本語を入力して保存し、開き直して全文が残ることを確認してください。文字装飾・ファイル書き出し・クラウド同期はありません。

編集用ソースは`Live Memo.maxpat`です。利用時はAMXD単体で使う構成です。

## ライセンス

独自のパッチコードとドキュメントはMITです。[LICENSE](LICENSE)を参照してください。画像・キャラクター・アイコン・ロゴなどの素材はMITの対象外です。本配布にはそのような素材は含みません。第三者のアプリケーションやフォントは元のライセンスに従います。

参考：[Cycling '74 textedit公式仕様](https://docs.cycling74.com/legacy/max8/refpages/textedit)。
