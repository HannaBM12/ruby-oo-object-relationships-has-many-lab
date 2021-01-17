class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        @posts = []
        @@all << self
    end

    def add_post(post)
        @posts << post
        post.author = self
    end

    def posts
        Post.all.select{|post| post.author == self}
    end

    def add_post_by_title(title)
        post = Post.new(title)
        post.author = self
    end

    def self.post_count
        total = 0
        @@all.each{|author| total += author.posts.length}
        total
    end
    # binding.pry
end
