# aubio

Lisp bindings for [aubio](https://aubio.org/). Needs aubio compiled with libsndfile support for examples to work.

## Usage
To get a list of where the sets occur in seconds.
```
> (aubio::test-onset "/some.wav")
(0.0 0.21201815 0.4361905 0.66521543 0.8878458 1.0956463 1.3077097 1.5368707 1.7533107)
```

## See also

[ruby-aubio](https://github.com/xavriley/ruby-aubio) - where some of the examples came from
[sonic-pi](https://github.com/samaaron/sonic-pi/blob/0fff19db99350ab143a3a5c3e353c73555ca3574/app/server/ruby/lib/sonicpi/samplebuffer.rb) - aubio being used on sonic-pi
