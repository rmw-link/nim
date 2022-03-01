## 编译文件大小优化

https://github.com/ee7/binary-size

nim c -d:danger. The binary size can be further reduced to 49K with stripping (--passL:-s) and link-time optimization (--passC:-flto).

Statically linking against musl brings it under 5K - see here for more details.

## vim 安装语法服务器

nimble install nimlsp -y
