### Advanced Fulltext Search Configuration
[link](https://github.com/sunspot/sunspot/wiki/Advanced-Fulltext-Search-Configuration)

Sunspot's default search schema uses a fairly conservative configuration for fulltext search.
=> Mặc định thì **sunspot** sử dụng cấu hình khá là bảo thủ cho **fulltext search**

Text is divided into tokens based on whitespace and other delimiter characters using a smart tokenizer called the StandardTokenizer;
=> **Text** sẽ được chia ra thành các thẻ dựa trên `dấu cách` và các ký tự khác (bằng cách sử dụng một `tokenizer` thông minh được gọi là `StandardTokenizer`)

it's lower-cased using the LowerCaseFilter, to make fulltext search case-insensitive; and that's about it.
=> No la 'lower-cased' hon dung `LowerCaseFilter` de tao `fulltext search case-insensitive`

However, Solr is extremely flexible in how it indexes and searches fulltext; a lot of advanced functionality can be configured quite easily.
=> Tuy nhiên, **Solr** cực kỳ linh hoạt trong cách lập chỉ mục và tìm kiếm toàn văn bản; rất nhiều chức năng tiên tiến có thể được cấu hình khá dễ dàng.

When you run the embedded Solr instance provided with Sunspot::Rails using rake sunspot:solr:start
=> Khi bạn chạy các ví dụ Solr nhúng được cung cấp với `Sunspot :: Rails` sử dụng `rake sunspot:solr:start`


it creates a solr directory in your project root containing, among other things, solr/conf/schema.xml. It is in this file that you can change your fulltext search configuration. We'll consider two use cases
=> nó tạo ra một thư mục `Solr` trong thư mục gốc của dự án
- `solr/conf/schema.xml` => Bạn có thể thay đổi `fulltext search configuration` trong file này
