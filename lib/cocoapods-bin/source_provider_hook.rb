Pod::HooksManager.register('cocoapods-bin', :source_provider) do |context, _|
	sources_manager = Pod::Config.instance.sources_manager

	# 添加源码私有源
	context.add_source(sources_manager.code_source)
	# 添加二进制私有源
	context.add_source(sources_manager.binary_source)
end