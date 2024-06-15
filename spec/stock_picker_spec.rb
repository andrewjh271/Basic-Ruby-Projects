require './stock_picker/stock_picker'

describe '#stock_picker' do
  it 'finds buy and sell days and profit' do
    expect(stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1, 4])
  end

  it 'works with different array' do
    expect(stock_picker([100, 87, 34, 30, 24, 11, 6])).to eq([])
  end

  it 'works with different array' do
    expect(stock_picker([12, 45, 67, 78, 222, 455, 5644, 223])).to eq([0, 6])
  end
end
