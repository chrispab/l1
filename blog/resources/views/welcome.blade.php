<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>        <meta charset="utf-8">
            <script>
(function() {
  var app;

  $(document).ready(function() {
    return app.init();
  });

  app = {
    text: "Hello",
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
                          </script>
            <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>.</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Biryani" rel="stylesheet">

        <!-- Styles -->
        <style>
            html, body {
                background-color: #082e08;
                color: #98d3ee;
                font-family: Biryani, sans-serif;
                font-weight: 200;
                height: 100vh;
                margin: 0;
            }

            .full-height {
                height: 100vh;
            }

            .flex-center {
                align-items: center;
                display: flex;
                justify-content: center;
            }

            .position-ref {
                position: relative;
            }

            .top-right {
                position: absolute;
                right: 10px;
                top: 18px;
            }

            .content {
                text-align: center;
            }

            .title {
                font-size: 84px;
            }

            .links > a {
                color: #33b8f6;
                padding: 0 25px;
                font-size: 13px;
                font-weight: 600;
                letter-spacing: .1rem;
                text-decoration: none;
                text-transform: uppercase;
            }

            .m-b-md {
                margin-bottom: 30px;
            }

            @import url(https://fonts.googleapis.com/css?family=Roboto);
body {
  /* font-family: 'Roboto'; */
  color: #20b2e3;
}
.text {
  width: 100%;
  text-align: center;
  height: 50px;
  line-height: 50px;
  font-size: 30px;
  /* position: absolute; */
  top: 0;
  bottom: 0;
  margin: auto;
}
.text .content {
  display: inline;
}
.text .dash {
  display: inline-block;
  height: 3px;
  width: 20px;
  background-color: #3498db;
  animation: blink 0.5s infinite linear;
}
@keyframes blink {
  0% {
    opacity: 1;
  }
  99% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
        </style>


    </head>
    <body>
        <div class="flex-center position-ref full-height">
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>

                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif

            <div class="content">
                <div class="title m-b-md">
                        <div class="text">
                                <div class="content">

                                </div>
                                <div class="dash"></div>
                              </div>
                </div>

                <div class="links">
                    <a href="http://192.168.0.230/">Zone Logs</a>
                    <a href="http://192.168.0.200:8080/habpanel/index.html#/view/Temperature">Hab Dash</a>
                    <a href="http://192.168.0.200:8080/habpanel/index.html#/view/Zones">Hab Zones</a>



                </div>
            </div>
        </div>
    </body>
</html>
