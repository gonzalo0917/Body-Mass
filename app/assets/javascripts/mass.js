var mass = {
    initialize: function(element){
        this.$el = element
        this.event();
    },
    imc:function(){
        return this.$el.find("#story_mass").val() * Math.pow(this.$el.find("#story_height").val(), 2);               
    },
    event:function(){
        self = this;
        this.$el.find("#calculate").click(function(e){
            if(self.$el.find("#story_mass").val() && self.$el.find("#story_height").val()){
                self.$el.find("#story_result").val(self.imc());
            }
        });
    }
}

var ready = function() {
  if ($('.mass').length)
    mass.initialize($('.mass'));
};

$(document).ready(ready);
$(document).on('page:load', ready);
