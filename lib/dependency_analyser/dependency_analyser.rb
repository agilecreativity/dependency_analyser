module DependencyAnalyser
  CustomError = Class.new(StandardError)
  class Dependencies
    attr_reader :mapped_items,
                :used_items,
                :all_items

    def initialize
      @mapped_items = {}
      @used_items   = []
      @all_items    = []
    end

    def set_dependency(item, item_list)
      mapped_items[item] = item_list
    end

    def dependencies_for(item)
      used_items = []
      dependencies(item).flatten.uniq.sort.keep_if { |e| e != item }
    end

    private

    def dependencies(item)
      return all_items if used_items.include?(item)
      used_items << item
      item_list ||= mapped_items.select { |i, _| i == item }.values.flatten
      sub_deps = []
      item_list.each do |item|
        all_items << item
        sub_deps << dependencies(item)
      end
      item_list + sub_deps
    end
  end
end
