require'lspconfig'.sqls.setup{
    on_attach = function(client)
        client.resolved_capabilities.execute_command = true

        require'sqls'.setup{}
    end
}

require'lspconfig'.sqls.setup{
  settings = {
    sqls = {
      connections = {
        {
          driver = 'mysql',
          dataSourceName = 'root:root@tcp(127.0.0.1:13306)/world',
        },
        {
          driver = 'postgresql',
          dataSourceName = 'host=127.0.0.1 port=15432 user=postgres password=mysecretpassword1234 dbname=dvdrental sslmode=disable',
        },
      },
    },
  },
}

