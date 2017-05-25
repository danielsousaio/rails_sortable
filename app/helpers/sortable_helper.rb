module SortableHelper

  def sortable_fetch(models, &block)
    raise "You must call with block!" unless block_given?
    models.each do |object|
      yield object, "#{object.class}_#{object.id}"
    end
  end

  def sortable_fetch_array(models, &block)
    raise "You must call with block!" unless block_given?
    models.each do |object|
      yield object, "#{object.first.class}_#{object.first.id}"
    end
  end
end
