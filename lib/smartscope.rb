require "smartscope/version"

module Smartscope
	class Scope
		def initialize(ns, scopes)
			@ns = ns
			@scopes = scopes
		end

		def verify(scope)
			if @scopes.include?('*') or @scopes.include?(@ns + ':*')
				true
			else
				@scopes.include?(@ns + ':' + scope)
			end
		end
	end
end
