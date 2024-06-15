require './bubble_sort/bubble_sort'

describe '#bubble_sort' do
  it 'sorts an array' do
    expect(bubble_sort([4, 3, 78, 2, 0, 2])).to eq([0, 2, 2, 3, 4, 78])
  end

  it 'sorts a different array' do
    expect(bubble_sort([3, 6, 1, 8, 55, 99, 1, 0, 5, 2, 4, 3222, 5, 4, -85, 3, 3, 3, 646, 1, 5, 3, 5, 1, 6]))
      .to eq([-85, 0, 1, 1, 1, 1, 2, 3, 3, 3, 3, 3, 4, 4, 5, 5, 5, 5, 6, 6, 8, 55, 99, 646, 3222])
  end

  it 'sorts a small array' do
    expect(bubble_sort([3, 1])).to eq([1, 3])
  end

  it 'sorts a sorted array' do
    expect(bubble_sort([1, 2, 3, 4, 5, 6])).to eq([1, 2, 3, 4, 5, 6])
  end

  it 'handles an empty array' do
    expect(bubble_sort([])).to eq([])
  end
end
