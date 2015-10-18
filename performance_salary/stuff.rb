 class Stuff
   def initilize(id, name, department,position)
     attr_accessor :id,:name, :department, :position
   end
   @act = {:new=>boolean , :imove => boolean, :act_time => time, duration = time }
   def move(to_department,duration,type)
     self.department = to_department
     self.act.act_time = Date.now
     self.duration = duration
     if type = 1
       self.imove = 1
     else
       self.imove = 0
     end
   end

 end

