require 'rails_helper'

describe Violation do
  it { should validate_presence_of :inspection_id }
  it { should validate_presence_of :category }
  it { should validate_presence_of :violation_date }
  it { should validate_presence_of :violation_type }
end
