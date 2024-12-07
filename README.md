# rusty-book-manager-template

『Rust による Web アプリケーション開発』上の蔵書管理アプリケーションを実装するために便利なテンプレートリポジトリです。本書の開発を開始するにあたり、一通り必要な設定やファイルを揃えています。

このテンプレートリポジトリをお手元に clone することで、本書での開発をよりスムーズに進めることができます。このリポジトリを利用して開発を進めると、cargo-make に関する設定や Docker に関連する設定をショートカットすることができます。Rust のコードに集中して本書の理解を進めたい方はぜひ、このリポジトリをお手元に clone してください。

## 使い方

このリポジトリのページの右上にある「Use this repository」というボタンを押してください。ボタンを押下後、「Create a new repository」を選択します。

![Use this repository](./doc/images/readme_image_1.png)

続いて、自身のリポジトリ名を入力し、リポジトリを作成します。手元にリポジトリが作成されたら、開発を開始することができます。

![Create a new repository](./doc/images/readme_image_2.png)

## テンプレートの内容

このテンプレートリポジトリには下記が含まれています。

- Dockerfile: Docker 向けの設定が書かれています。
- compose.yaml: docker compose を立ち上げるために必要です。
- Makefile.toml: cargo-make の設定のために必要です。
- rust-toolchain.toml: 書籍と Rust のバージョンをそろえるために必要です。
- .github: GitHub Actions の設定ファイルが主に含まれています。
- infra: AWS 上にリソースを構築し、デプロイやリリースを一通り体験したい場合に必要です。セットアップの方法については、[README](./infra/README.md)に記載しています。
- frontend: rust-book-manager の UI を立ち上げたい場合に必要です。立ち上げる方法は、[README](./frontend/README.md)に記載しています。

```:bash
cargo make initial-setup

cargo make psql
\dt

curl -v -X POST "http://localhost:8080/auth/login" -H 'content-type: application/json' -d '{"email":"eleazar.fig@example.com", "password": "pa55w0rd"}'

curl -v "http://localhost:8080/api/v1/users" -H 'Authorization: Bearer 5fc49e05d6fa4557a1f90a1d0281f541' | jq
curl -v -X POST "http://localhost:8080/api/v1/users" -H 'Authorization: Bearer 5fc49e05d6fa4557a1f90a1d0281f541'  -H 'content-type: application/json' -d '{"name": "yamada", "email": "yamada@example.com", "password":"hogehoge"}'

curl -v -X POST "http://localhost:8080/api/v1/books" -H 'Authorization: Bearer 6d6cf648c7c543c997082b8ddacbab51' -H 'content-type: application/json' -d '{"title": "Rust book", "author": "me", "isbn": "1234567890", "description": ""}'
curl -v "http://localhost:8080/api/v1/books" -H 'Authorization: Bearer 6d6cf648c7c543c997082b8ddacbab51' | jq

curl -v -X POST "http://localhost:8080/api/v1/books/56b4e1e8d33943bcb5e450bcc212be72/checkouts" -H 'Authorization: Bearer 6d6cf648c7c543c997082b8ddacbab51' | jq
curl -v "http://localhost:8080/api/v1/books/checkouts" -H 'Authorization: Bearer 6d6cf648c7c543c997082b8ddacbab51' | jq
curl -v -X PUT "http://localhost:8080/api/v1/books/56b4e1e8d33943bcb5e450bcc212be72/checkouts/e7398caee22c4a538077bd258450e971/returned" -H 'Authorization: Bearer 6d6cf648c7c543c997082b8ddacbab51' | jq
```
