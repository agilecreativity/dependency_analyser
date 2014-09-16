require_relative '../../test_helper'
describe DependencyAnalyser do
  let :dependency do
    Dependencies.new
  end

  describe 'non-cyclic dependencies' do
    before :each do
      dependency.set_dependency('A', %w(B C))
      dependency.set_dependency('B', %w(C E))
      dependency.set_dependency('C', %w(G  ))
      dependency.set_dependency('D', %w(A F))
      dependency.set_dependency('E', %w(F  ))
      dependency.set_dependency('F', %w(H  ))
    end
    it 'contains the proper dependencies for A' do
      assert_equal dependency.dependencies_for('A'), %w(B C E F G H)
    end
    it 'contains the proper dependencies for B' do
      assert_equal dependency.dependencies_for('B'), %w(C E F G H)
    end
    it 'contains the proper dependencies for C' do
      assert_equal dependency.dependencies_for('C'), %w(G)
    end
    it 'contains the proper dependencies for D' do
      dependency.dependencies_for('D').must_equal(%w(A B C E F G H))
    end
    it 'contains the proper dependencies for E' do
      dependency.dependencies_for('E').must_equal(%w(F H))
    end
    it 'contains the proper dependencies for F' do
      dependency.dependencies_for('F').must_equal(%w(H))
    end
  end

  describe 'cyclic dependencies' do
    before do
      dependency.set_dependency('A', 'B')
      dependency.set_dependency('B', 'C')
      dependency.set_dependency('C', 'A')
    end
    it 'contains the proper dependencies for A' do
      assert_equal dependency.dependencies_for('A'), %w(B C)
    end
    it 'contains the proper dependencies for B' do
      assert_equal dependency.dependencies_for('B'), %w(A C)
    end
    it 'contains the proper dependencies for C' do
      assert_equal dependency.dependencies_for('C'), %w(A B)
    end
  end
end
