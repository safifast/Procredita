<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <script>
        window.Laravel = {
            csrfToken: "{{csrf_token()}}"
        }

    </script>

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:600|Raleway:600,700,500,300,400,100,200"
        rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div id="app">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2 bg-blue p-0">
                    {{-- navbar section --}}
                    <sidebar-section></sidebar-section>

                </div>
                <div class="col-lg c-border bg-lightblue p-0">
                    <main class="">
                        @yield('content')
                    </main>

                </div>
            </div>
        </div>

    </div>
</body>

</html>