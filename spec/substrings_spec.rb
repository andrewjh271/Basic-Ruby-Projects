require './substrings/substrings'

describe '#substrings' do
  dictionary = %w[below down go going horn how howdy it i low own part partner sit]

  it 'returns a hash listing substrings' do
    expect(substrings('below', dictionary))
      .to eq({ 'below' => 1, 'low' => 1 })
  end

  it 'returns a hash listing different substrings' do
    expect(substrings('Howdy partner, sit down! How\'s it going?', dictionary))
      .to eq({ 'down' => 1, 'how' => 2, 'howdy' => 1, 'go' => 1, 'going' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
               'part' => 1, 'partner' => 1, 'sit' => 1 })
  end

  it 'returns a hash listing different substrings' do
    expect(substrings('Why go down below the low bow when it always makes you feel so low?', dictionary))
      .to eq({ 'below' => 1, 'down' => 1, 'go' => 1, 'it' => 1, 'i' => 1, 'low' => 3, 'own' => 1 })
  end
end
