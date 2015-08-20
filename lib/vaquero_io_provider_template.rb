module ProviderExtension
  def template
    puts 'in template called from included gem'
  end
  def test1
    puts 'test1'
  end
  def test2
    puts 'test2'
  end
end