
class Backer
    attr_reader :name

    @@all = []
    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def projects
        ProjectBacker.all.select {|pb| pb.backer == self}
    end

    def backed_projects
        #projects = ProjectBacker.all.select {|pb| pb.backer == self}
        self.projects.map {|pb| pb.project}
    end

end
