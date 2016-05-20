module Jekyll

  class CategoryPage < Page
    def initialize(site, base, dir, category, posts)
      @site = site
      @base = base
      @dir = dir
      @name = 'index.html'
      @layout = site.config['category'] && site.config['category']['layout'] || ''

      self.process(@name)
      self.read_yaml(File.join("/", '_includes'), 'blog-list.html')
      self.data['category'] = category

      category_title_prefix = site.config['category']['title_prefix'] || 'Category: '
      self.data = {
        'layout' => @layout,
        'title' => "#{category_title_prefix}#{category}",
        'posts' => posts
      }
    end
  end

  class CategoryPageGenerator < Generator
    safe true

    def generate(site)
      dir = site.config['category']['path'] || 'categories'
      site.categories.each_key do |category|
        site.pages << CategoryPage.new(site, site.source, File.join(dir, category), category, posts_by_category(site, category))
      end
    end

    def posts_by_category(site, category)
      site.posts.docs.find_all { |post| post.categories.any? { |c| c == category } }
    end
  end

end