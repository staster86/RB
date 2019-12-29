require 'yaml/store'

class WorkListStore

  def initialize(file_name)
    @store = YAML::Store.new(file_name)
  end

  def save(work_list)
    @store.transaction do
      unless work_list.id
        highest_id = @store.roots.max || 0
        work_list.id = highest_id + 1
      end
      @store[work_list.id] = work_list
    end
  end

  def all
    @store.transaction do
      @store.roots.map { |id| @store[id] }
    end
  end

  def del(id)
    @store.transaction do
      @store.delete[id]
    end
  end

end
