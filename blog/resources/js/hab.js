(function() {
    var app;

    $(document).ready(function() {
        return app.init();
    });

    app = {
        text: "_____",
        index: 0,
        chars: 0,
        speed: 200,
        container: ".text .content",
        init: function() {
            this.chars = this.text.length;
            return this.write();
        },
        write: function() {
            $(this.container).append(this.text[this.index]);
            if (this.index < this.chars) {
                this.index++;
                return window.setTimeout(function() {
                    return app.write();
                }, this.speed);
            }
        }
    };

}).call(this);