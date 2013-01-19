# ワーカーの数
worker_processes 2
working_directory "#{ENV['RAILS_ROOT']}"

# ソケット経由で通信する
listen File.expand_path('tmp/pids/unicorn.sock', ENV['RAILS_ROOT'])
listen 4422, :tcp_nopush => true
pid File.expand_path('tmp/pids/unicorn.pid', ENV['RAILS_ROOT'])
timeout 10

# ログ
stderr_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])
stdout_path File.expand_path('log/unicorn.log', ENV['RAILS_ROOT'])

# ダウンタイムなくす
# preload_app true
preload_app faise

GC.respond_to?(:copy_on_write_friendly=) and GC.copy_on_write_friendly = true

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{ server.config[:pid] }.oldbin"
  unless old_pid == server.pid
    begin
      # SIGTTOU だと worker_processes が多いときおかしい気がする
      Process.kill :QUIT, File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end