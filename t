=> [32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000055c29f8079f8[0m
 @active[32m=[0m[1;36mnil[0m,
 @config[32m=[0m
  {[33m:adapter[0m=>[31m[1;31m"[0m[31msqlite3[1;31m"[0m[31m[0m,
   [33m:pool[0m=>[1;34m5[0m,
   [33m:timeout[0m=>[1;34m5000[0m,
   [33m:database[0m=>[31m[1;31m"[0m[31m/home/sean/projects/DevelopmentInterviewStarterKit-master/db/development.sqlite3[1;31m"[0m[31m[0m},
 @connection[32m=[0m
  [32m#<SQLite3::Database:0x000055c29f800720[0m
   @authorizer[32m=[0m[1;36mnil[0m,
   @busy_handler[32m=[0m[1;36mnil[0m,
   @collations[32m=[0m{},
   @encoding[32m=[0m[32m#<Encoding:UTF-8>[0m,
   @functions[32m=[0m{},
   @readonly[32m=[0m[1;36mfalse[0m,
   @results_as_hash[32m=[0m[1;36mtrue[0m,
   @tracefunc[32m=[0m[1;36mnil[0m,
   @type_translation[32m=[0m[1;36mnil[0m[32m>[0m,
 @instrumenter[32m=[0m
  [32m#<ActiveSupport::Notifications::Instrumenter:0x000055c29f30d4e8[0m
   @id[32m=[0m[31m[1;31m"[0m[31m2c512a67c1ccf0075f16[1;31m"[0m[31m[0m,
   @notifier[32m=[0m
    [32m#<ActiveSupport::Notifications::Fanout:0x000055c29de05578[0m
     @_mutex[32m=[0m[32m#<Thread::Mutex:0x000055c29de05410[0m[32m>[0m,
     @listeners_for[32m=[0m[32m#<Concurrent::Map:0x0055c29de05528 entries=2 default_proc=nil>[0m,
     @subscribers[32m=[0m
      [[32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x000055c29f257da0[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActiveRecord::LogSubscriber:0x000055c29f27c100[0m
          @patterns[32m=[0m[[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActiveRecord::LogSubscriber-47147191099520[1;31m"[0m[31m[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x000055c29f500e80[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActionView::LogSubscriber:0x000055c29f501ee8[0m
          @patterns[32m=[0m
           [[31m[1;31m"[0m[31mrender_template.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_partial.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_collection.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mlogger.action_view[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActionView::LogSubscriber-47147192422260[1;31m"[0m[31m[0m,
          @root[32m=[0m[1;36mnil[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31mrender_template.action_view[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x000055c29f500c78[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActionView::LogSubscriber:0x000055c29f501ee8[0m
          @patterns[32m=[0m
           [[31m[1;31m"[0m[31mrender_template.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_partial.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_collection.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mlogger.action_view[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActionView::LogSubscriber-47147192422260[1;31m"[0m[31m[0m,
          @root[32m=[0m[1;36mnil[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31mrender_partial.action_view[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x000055c29f500a70[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActionView::LogSubscriber:0x000055c29f501ee8[0m
          @patterns[32m=[0m
           [[31m[1;31m"[0m[31mrender_template.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_partial.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_collection.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mlogger.action_view[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActionView::LogSubscriber-47147192422260[1;31m"[0m[31m[0m,
          @root[32m=[0m[1;36mnil[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31mrender_collection.action_view[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x000055c29f500700[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m
         [32m#<ActionView::LogSubscriber:0x000055c29f501ee8[0m
          @patterns[32m=[0m
           [[31m[1;31m"[0m[31mrender_template.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_partial.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mrender_collection.action_view[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31mlogger.action_view[1;31m"[0m[31m[0m],
          @queue_key[32m=[0m[31m[1;31m"[0m[31mActionView::LogSubscriber-47147192422260[1;31m"[0m[31m[0m,
          @root[32m=[0m[1;36mnil[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31mlogger.action_view[1;31m"[0m[31m[0m[32m>[0m,
       [32m#<ActiveSupport::Notifications::Fanout::Subscribers::Evented:0x00007f138c4301d8[0m
        @can_publish[32m=[0m[1;36mfalse[0m,
        @delegate[32m=[0m[32m#<ActiveRecord::ExplainSubscriber:0x00007f138c430228[0m[32m>[0m,
        @pattern[32m=[0m[31m[1;31m"[0m[31msql.active_record[1;31m"[0m[31m[0m[32m>[0m][32m>[0m[32m>[0m,
 @lock[32m=[0m
  [32m#<Monitor:0x00007f138c363138[0m
   @mon_count[32m=[0m[1;34m0[0m,
   @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x00007f138c363020[0m[32m>[0m,
   @mon_mutex_owner_object_id[32m=[0m[1;34m69860966733980[0m,
   @mon_owner[32m=[0m[1;36mnil[0m[32m>[0m,
 @logger[32m=[0m
  [32m#<ActiveSupport::Logger:0x000055c29f818e88[0m
   @default_formatter[32m=[0m[32m#<Logger::Formatter:0x000055c29f818de8[0m @datetime_format[32m=[0m[1;36mnil[0m[32m>[0m,
   @formatter[32m=[0m[32m#<ActiveSupport::Logger::SimpleFormatter:0x00007f138c27c8f0[0m @datetime_format[32m=[0m[1;36mnil[0m[32m>[0m,
   @level[32m=[0m[1;34m0[0m,
   @local_levels[32m=[0m[32m#<Concurrent::Map:0x0055c29f818c30 entries=0 default_proc=nil>[0m,
   @logdev[32m=[0m
    [32m#<Logger::LogDevice:0x000055c29f818d98[0m
     @dev[32m=[0m[32m#<File:/home/sean/projects/DevelopmentInterviewStarterKit-master/log/development.log>[0m,
     @filename[32m=[0m[1;36mnil[0m,
     @mon_count[32m=[0m[1;34m0[0m,
     @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x000055c29f818d20[0m[32m>[0m,
     @mon_mutex_owner_object_id[32m=[0m[1;34m47147194042060[0m,
     @mon_owner[32m=[0m[1;36mnil[0m,
     @shift_age[32m=[0m[1;36mnil[0m,
     @shift_period_suffix[32m=[0m[1;36mnil[0m,
     @shift_size[32m=[0m[1;36mnil[0m[32m>[0m,
   @progname[32m=[0m[1;36mnil[0m[32m>[0m,
 @owner[32m=[0m[32m#<Thread:0x000055c29ca932d8 run>[0m,
 @pool[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x00007f13783cd2b8[0m
   @automatic_reconnect[32m=[0m[1;36mtrue[0m,
   @available[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool::ConnectionLeasingQueue:0x00007f13783ccfc0[0m
     @cond[32m=[0m
      [32m#<MonitorMixin::ConditionVariable:0x00007f13783ccf98[0m
       @cond[32m=[0m[32m#<Thread::ConditionVariable:0x00007f13783ccf20[0m[32m>[0m,
       @monitor[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x00007f13783cd2b8[0m ...[32m>[0m[32m>[0m,
     @lock[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x00007f13783cd2b8[0m ...[32m>[0m,
     @num_waiting[32m=[0m[1;34m0[0m,
     @queue[32m=[0m[][32m>[0m,
   @checkout_timeout[32m=[0m[1;34m5[0m,
   @connections[32m=[0m[[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000055c29f8079f8[0m ...[32m>[0m],
   @lock_thread[32m=[0m[1;36mfalse[0m,
   @mon_count[32m=[0m[1;34m0[0m,
   @mon_mutex[32m=[0m[32m#<Thread::Mutex:0x00007f13783cd1f0[0m[32m>[0m,
   @mon_mutex_owner_object_id[32m=[0m[1;34m69860799179100[0m,
   @mon_owner[32m=[0m[1;36mnil[0m,
   @now_connecting[32m=[0m[1;34m0[0m,
   @query_cache_enabled[32m=[0m
    [32m#<Concurrent::Map:0x007f13783cd1c8 entries=0 default_proc=#<Proc:0x00007f13783cd128@/home/sean/.rvm/gems/ruby-2.6.3/gems/activerecord-5.1.4/lib/active_record/connection_adapters/abstract/query_cache.rb:27>>[0m,
   @reaper[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionPool::Reaper:0x00007f13783cd100[0m
     @frequency[32m=[0m[1;36mnil[0m,
     @pool[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::ConnectionPool:0x00007f13783cd2b8[0m ...[32m>[0m[32m>[0m,
   @size[32m=[0m[1;34m5[0m,
   @spec[32m=[0m
    [32m#<ActiveRecord::ConnectionAdapters::ConnectionSpecification:0x00007f13783cd4e8[0m
     @adapter_method[32m=[0m[31m[1;31m"[0m[31msqlite3_connection[1;31m"[0m[31m[0m,
     @config[32m=[0m
      {[33m:adapter[0m=>[31m[1;31m"[0m[31msqlite3[1;31m"[0m[31m[0m,
       [33m:pool[0m=>[1;34m5[0m,
       [33m:timeout[0m=>[1;34m5000[0m,
       [33m:database[0m=>[31m[1;31m"[0m[31m/home/sean/projects/DevelopmentInterviewStarterKit-master/db/development.sqlite3[1;31m"[0m[31m[0m},
     @name[32m=[0m[31m[1;31m"[0m[31mprimary[1;31m"[0m[31m[0m[32m>[0m,
   @thread_cached_conns[32m=[0m[32m#<Concurrent::Map:0x007f13783cd060 entries=1 default_proc=nil>[0m,
   @threads_blocking_new_connections[32m=[0m[1;34m0[0m[32m>[0m,
 @prepared_statements[32m=[0m[1;36mtrue[0m,
 @query_cache[32m=[0m{},
 @query_cache_enabled[32m=[0m[1;36mfalse[0m,
 @quoted_column_names[32m=[0m{},
 @quoted_table_names[32m=[0m{},
 @schema_cache[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::SchemaCache:0x00007f138c363340[0m
   @columns[32m=[0m{},
   @columns_hash[32m=[0m{},
   @connection[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000055c29f8079f8[0m ...[32m>[0m,
   @data_sources[32m=[0m{},
   @primary_keys[32m=[0m{}[32m>[0m,
 @statements[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter::StatementPool:0x00007f138c362f30[0m @cache[32m=[0m{}, @statement_limit[32m=[0m[1;34m1000[0m[32m>[0m,
 @transaction_manager[32m=[0m
  [32m#<ActiveRecord::ConnectionAdapters::TransactionManager:0x00007f138c363688[0m
   @connection[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000055c29f8079f8[0m ...[32m>[0m,
   @stack[32m=[0m[][32m>[0m,
 @visitor[32m=[0m
  [32m#<Arel::Visitors::SQLite:0x00007f138c3631d8[0m
   @connection[32m=[0m[32m#<ActiveRecord::ConnectionAdapters::SQLite3Adapter:0x000055c29f8079f8[0m ...[32m>[0m,
   @dispatch[32m=[0m{}[32m>[0m[32m>[0m
