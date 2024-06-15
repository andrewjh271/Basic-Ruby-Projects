require './caesar_cipher/lib/caesar_cipher'

describe '#caesar_cipher' do
  it 'works with a single character' do
    expect(caesar_cipher('A', 5)).to eq('F')
  end
  it 'works with words' do
    expect(caesar_cipher('Hello', 5)).to eq('Mjqqt')
  end
  it 'works with negative shift' do
    expect(caesar_cipher('Mjqqt, Btwqi!', -5)).to eq('Hello, World!')
  end
  it 'wraps' do
    expect(caesar_cipher('Z', 1)).to eq('A')
  end
  it 'words with large shift factors' do
    expect(caesar_cipher('Hello, World!', 75)).to eq('Ebiil, Tloia!')
  end
  it 'works with large negative shift factors' do
    expect(caesar_cipher('Hello, World!', -55)).to eq('Ebiil, Tloia!')
  end
  it 'ignores symbols' do
    expect(caesar_cipher('HelLo 2@43 hI**', 4)).to eq('LipPs 6@87 lM**')
  end
  it 'shifts numbers but not symbols' do
    expect(caesar_cipher('0123456789:!@#$%^&*()', -4444)).to eq('6789012345:!@#$%^&*()')
  end
end
