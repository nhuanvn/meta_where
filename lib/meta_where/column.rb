module MetaWhere
  class Column
    attr_reader :column, :method
    
    def initialize(column, method)
      @column = column.to_s
      @method = method
    end
    
    def %(value)
      MetaWhere::Condition.new(column, value, method)
    end
    
    # Play "nicely" with expand_hash_conditions_for_aggregates
    def to_sym
      self
    end
  end
end