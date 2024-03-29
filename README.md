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

## 設定した機能
- ログイン機能
  - メールアドレスとパスワードによるログイン
  - LINEによるログイン
- ルーレット機能
  - 針を無くしたルーレット機能
  - タスク、名前が編集できるようにする
- タスク管理機能
  - 分担したユーザーごとのタスクを一覧で表示し、タスクが完了されているかチェックする
- 分担表LINE送信機能
  - LINEログインユーザーに作成した分担表を送ることができる



## なぜこのサービスを作りたいのか？
- 大学生だったこともあり、大人数でのBBQやイベントの際に役割分担でもたつくことや、トラブルになることがあったのでそれを手軽に解消できないかと思いました。
また、ルーレット形式でランダムに決まることにより、大人数で誰がどの役割になるのかというゲーム性も取り込みたいと考えました。

## 使用技術
・ruby
・rails
・Vue.js

## スケジュール
企画・技術調査 ４/16 〆切
README〜ER図作成：4/17 〆切
メイン機能実装：4/18 - 5/7
β版をRUNTEQ内リリース（MVP）：5/17〆切
本番リリース：6月中旬

## 画面遷移図
https://www.figma.com/file/BTWujlkV9J2JazRaBoV0QU/Untitled?node-id=0%3A1

## ER図
https://drive.google.com/file/d/1Iw5YPIsUP3lEDLgUPqQQ7Wh3QNaO8-i6/view?usp=sharing
