[mysqld]
transaction-isolation = READ-COMMITTED
datadir = /var/lib/mysql
socket = /var/lib/mysql/mysql.sock
user = mysql
key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 16M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1
max_connections = 75
log-bin = /var/lib/mysql/logs/binary/mysql_binary_log
binlog_format = mixed
read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M
innodb_file_per_table = 1
innodb_flush_log_at_trx_commit = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = {{ item.buffer_pool_size }}
innodb_thread_concurrency = {{ item.thread_concurrency }}
innodb_flush_method = O_DIRECT
innodb_log_file_size = {{ item.log_file_size }}

[mysqld_safe]
log-error=/var/log/mysqld.log
pid-file=/var/run/mysqld/mysqld.pid
