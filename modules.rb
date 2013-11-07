class SomeClass
  def paths
    @paths ||= Paths.new
  end

  def success_path
    paths.success_path
  end

  def failure_path
    paths.failure_path
  end

  if ActiveSupport(RAILS!!!)
  require 'active_support/core_ext/module/delegation'
  delegate :success_path, :failure_path, :to => :paths


  if you want to use the ruby forwardable module
  require 'forwardable'
  extend Forwardable
  def_delegators :paths, :success_path, :error_path
end

#Could be a module but it got fat.
class Paths
  def success_path
    '/sowju/party'
  end

  def failure_path
    '/game/over'
  end

  def some_other_path
    '/somewhere/else'
  end

  def another_one
    '/wut?'
  end

  def so_many_paths
    '/paths/for/days'
  end
end