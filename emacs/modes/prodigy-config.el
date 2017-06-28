(use-package prodigy
  :config
  (prodigy-define-service
    :name "SpaceList ElasticSearch"
    :command "docker-compose"
    :args '("up" "elasticsearch" )
    :cwd "/home/sean/Code/Ruby/SpaceList"
    :tags '(work)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)

  (prodigy-define-service
    :name "SpaceList Memcached"
    :command "docker-compose"
    :args '("up" "memcached")
    :cwd "/home/sean/Code/Ruby/SpaceList"
    :tags '(work)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)

  (prodigy-define-service
    :name "SpaceList FrontEnd"
    :command "npm"
    :args '("run" "dev" "--" "-P" "localhost:3000")
    :cwd "/home/sean/Code/JavaScript/SpaceList-ui"
    :tags '(work)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)

  (prodigy-define-service
    :name "SpaceList BackEnd"
    :command "bundle"
    :args '("exec" "rails" "s")
    :cwd "/home/sean/Code/Ruby/SpaceList"
    :tags '(work)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)

  (prodigy-define-service
    :name "RabbitMQ"
    :command "docker-compose"
    :args '("up")
    :cwd "/home/sean/Code/Tools/rabbitmq-compose"
    :tags '(work messaging)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)

  (prodigy-define-service
    :name "Imports Postgres"
    :command "docker-compose"
    :args '("up" "postgres")
    :cwd "/home/sean/Code/Go/src/github.com/SpaceList/imports"
    :tags '(work database)
    :stop-signal 'sigkill
    :kill-process-buffer-on-stop t)
  )
