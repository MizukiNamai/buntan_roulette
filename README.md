# buntan_roulette

## サービス概要

いくつかの選択肢を複数人で役割分担するときに
針をなくしたルーレット形式によって、役割分担を手助けする
ルーレットアプリです。

## メインターゲットのユーザー
- 大人数での役割分担をしたい人。（BBQや鍋パでの食材担当決めなど）
- 集まってイベントをすることの多い大学生

## ユーザーの抱える課題
- 通常のルーレットアプリでは針が一つしかないため、役割分担の際に（全体の人数−１）回さなければならず面倒
- 通常のルーレットアプリでは分担を確認する際に直感的にわかるような仕様ではないため、わかりにくい

## 解決方法
通常のルーレットから針を無くし、小学校の掃除当番表のような形でのルーレットアプリにすることで、役割分担への負担を軽減する[参考](https://i.gyazo.com/76bbfd47d8b555c1e7e384f1ada8e420.png)

## 実装予定の機能(MPV)
- ログイン機能
  - 登録不要のゲストログイン
  - メールアドレスとパスワードによるログイン
- ルーレット機能
  - 針を無くしたルーレット機能
- ログインユーザーの過去のルーレット保存機能
  -ログインしたユーザーの過去に作成したルーレットを保存し呼び出せるようにする
- ルーレット画像ダウンロード機能
  -ログインしたユーザーのみルーレット画像をダウンロードできる
- Twitterシェア機能
  ルーレットが決定したらTwitterでツイートできるようにする

## なぜこのサービスを作りたいのか？
- 先日まで大学生だったこともあり、大人数でのBBQやイベントの際に役割分担でもたつくことや、トラブルになることがあったのでそれを手軽に解消できないかと思いました。
また、ルーレット形式でランダムに決まることにより、大人数で誰がどの役割になるのかというゲーム性も取り込みたいと考えました。


## スケジュール
企画・技術調査 3/31 〆切
README〜ER図作成：4/4 〆切
メイン機能実装：4/5 - 4/25
β版をRUNTEQ内リリース（MVP）：5/5〆切
本番リリース：5月中旬
