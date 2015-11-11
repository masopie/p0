require_relative "my_solution"

def get_grade(average)
  if average.to_i >= 90
    p "A"
  elsif average.to_i >= 80
    p "B"
  elsif average.to_i >= 70
    p "C"
  elsif average.to_i >= 60
    p "D"
  else p "F"
  end
end

puts "What % (1-100) did you get on the test?"
average = gets.chomp

describe 'get_grade' do
  it 'is defined as a method' do
    expect(defined?(get_grade)).to eq 'method'
  end
  it 'returns "A" when the average is >= 90' do
    expect(get_grade(90)).to eq "A"
  end
  it 'returns "B" when the average is >= 80' do
    expect(get_grade(88)).to eq "B"
  end
  it 'returns "C" when the average is >= 70' do
    expect(get_grade(72)).to eq "C"
  end
  it 'returns "D" when the average is >= 60' do
    expect(get_grade(66)).to eq "D"
  end
  it 'returns "F" when the average is < 60' do
    expect(get_grade(50)).to eq "F"
  end
end