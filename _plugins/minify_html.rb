Jekyll::Hooks.register :site, :post_write do |site|
  # 构建网站后简化 HTML 文件
  gulp = File.join(site.source, 'node_modules', '.bin', 'gulp')
  system "#{gulp} minifyHTML --silent"
end
