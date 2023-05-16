# data-platform-freight-agreement-sql 

data-platform-freight-agreement-sql は、データ連携基盤において、輸送契約データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-freight-agreement-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-freight-agreement-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-freight-agreement-sql-header-data.sql（データ連携基盤 輸送契約 - ヘッダデータ）
* data-platform-freight-agreement-sql-header-doc-data.sql（データ連携基盤 輸送契約 - ヘッダ文書データ）
* data-platform-freight-agreement-sql-item-data.sql（データ連携基盤 輸送契約 - 明細データ）    
* data-platform-freight-agreement-sql-item-available-freight-data.sql（データ連携基盤 輸送契約 - 明細利用可能便データ）
* data-platform-freight-agreement-sql-partner-data.sql（データ連携基盤 輸送契約 - 取引先データ）
* data-platform-freight-agreement-sql-address-data.sql（データ連携基盤 輸送契約 - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
