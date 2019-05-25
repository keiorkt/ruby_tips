require './hash_table'

describe HashTable do
  let(:table) { HashTable.new }

  context 'キーに値が存在しないとき' do
    subject { table[0] }
    it { should be_nil }
  end

  context 'キーに値が存在するとき' do
    before { table[0] = :foo }
    subject { table[0] }
    it { should == :foo }
  end

  context '既に値が存在するキーにもう一度値をセットしたとき' do
    before { table[0] = :foo }
    it 'raises error' do
      proc { table[0] = :bar }.should raise_error
    end
  end

  context 'set same key in hash' do
    before do
      table[0] = :foo
      table[10] = :bar
    end

    it { table[0].should ==  :foo }
    it { table[10].should == :bar }
  end
end

