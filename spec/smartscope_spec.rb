require 'spec_helper'

describe Smartscope do
	it "allows wildcard scope" do
		scope = Smartscope::Scope.new('test', ['*'])
		scope.verify('anything').should be_true
		scope.verify('index').should be_true
		scope = Smartscope::Scope.new('test', ['test:*', 'animal:create'])
		scope.verify('dog').should be_true
		scope.verify('create').should be_true
	end
	it "uses namespace" do
		scope = Smartscope::Scope.new('test', ['test:index', 'animal:create', 'test:update'])
		scope.verify('index').should be_true
		scope.verify('create').should be_false
	end
end