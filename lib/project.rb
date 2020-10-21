class Project
    attr_reader :title

    @@all = []
    def self.all
        @@all
    end

    def initialize(title)
        @title = title
        @@all << self
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        proj_back = ProjectBacker.all.select {|pb| pb.project == self}
        proj_back.map {|pb| pb.backer}
    end


end
