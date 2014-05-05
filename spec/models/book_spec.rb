require 'spec_helper'

describe Book do
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
  it { should validate_numericality_of(:price).is_greater_than(0) }
  it { should ensure_inclusion_of(:category).in_array(["Science", "Travel", "Religion and Spirituality", "Philosophy", "Health and Fitness"]) }
end
