# 駅マージバグブロッカー

## <font color="Red">このスクリプトでブロックしているバグは `nightly r9422` で修正されているようです</font>
- nightly版を使用する際にはこのスクリプトは効果を発揮しません
  - 正確に調べたわけではないので、実際に修正されたコミットは異なるかもしれません
  - 修正されていることは確認済みです
- 記述時点でのOTRP最新版である `v29.6` ではこのコミットが取り込まれていません

## <font color="Red">公共駅マージによるバグは `OTRP v29.4` で修正されています</font>
- `OTRP v29.4` 以降を使用する際においても、同一駅クリックによる金銭の発生をブロックしたい場合はこのスクリプトを導入してください


## 機能
- 駅統合ツールで公共駅を自社駅にできないようにします
  - 駅統合ツールは公共駅に複数社乗り入れているとマージしたときに致命的なエラーが発生します（`OTRP v29.3` まで）
- 同一駅を駅統合ツールでクリックしてしまったときに動作しないようにします
  - 駅統合ツールは同一駅をクリックしてしまった場合でも、資金がかかります
#### このスクリプトはSimutrans本体のバグが修正されるまでの暫定的なものです

## 前提条件
simutrans/script下にtool_base.nutが配置されている必要があります。
tool_base.nutはstandard 122.0以降に同梱されていますが、単体でのダウンロードも可能です。
詳しくはsimutrans日本語化wikiをご確認ください。

## 使用方法
1. スクリプトツール読込ウィンドウ（dialog_tool[34]）より呼び出す
    - `safe_merge_station` の名前で表示されます
2. アイコンを表示させ、そのアイコンをクリックする
    - menuconfを設定してください
      - 表示したいメニュー項目に`scripts(general_tool[41])`を追記もしくはdescription.tabを書き換えてください

## 動作検証環境
- OTRP v28.3 pak.nippon
- OTRP v29.3 pak.nippon
- OTRP v29.4 pak.nippon
- OTRP v29.6 pak.nippon

## ファイル配置
（pak.nipponの部分は各自の環境に合わせてください）
```
simutrans
  └─pak.nippon
      ├─cursor.safe_merge_station.pak
      └─tool
         └─safe_merge_station
              ├─description.tab
              └─tool.nut

```

## ライセンス
- cursor.safe_merge_station.pakのアイコン画像はpak64のものを使用しています
  - licence_pak64.txt をご確認ください
- その他プログラムはMITライセンスに従います


## バージョン情報
- v2.0
  - 駅名が同一である他プレイヤー会社の駅との統合時に、同一駅と判定されないように修正
- v3.0
  - 同一駅名の別駅との統合が実行されるように修正
  - readmeの更新