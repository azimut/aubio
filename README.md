# aubio

Lisp bindings for [aubio](https://aubio.org/). Needs aubio compiled with libsndfile support for examples to work.

## Usage

### Loading

If aubio was compiled to use `single-float` for samples (default) use:
```
> (ql:quickload :aubio)
```
If instead aubio was compiled to use `double-float` for samples:
```
> (ql:quickload :aubio/double)
```

### Testing

To get a list of where the sets occur in seconds and in frames:
```
> (aubio::test-onset (asdf:system-relative-pathname :aubio "static/loop_amen.wav"))
(0.0d0 0.21201814058956917d0 0.4364625850340136d0 0.6651700680272109d0
 0.8877777777777778d0 1.09562358276644d0 1.307936507936508d0
 1.5369160997732427d0 1.753310657596372d0)
(0 9350 19248 29334 39151 48317 57680 67778 77321)
```
To get a list of where the beats occur in seconds and in frames:
```
> (aubio::test-beats (asdf:system-relative-pathname :aubio "static/loop_amen_full.wav"))
(1.5100907029478459d0 1.927233560090703d0 2.3443990929705216d0
 2.7615646258503403d0 3.226371882086168d0 3.6474829931972788d0
 4.068616780045351d0 4.7227437641723355d0 5.143628117913832d0
 5.564512471655329d0 6.223605442176871d0 6.6447165532879815d0
 6.857142857142857d0)
(66595 84991 103388 121785 142283 160854 179426 208273 226834 245395 274461
 293032 302400)
```

> Note: if you see only 1 value try loading `aubio/double`

## See also

* [ruby-aubio](https://github.com/xavriley/ruby-aubio) - where some of the examples came from
* [sonic-pi source](https://github.com/samaaron/sonic-pi/blob/0fff19db99350ab143a3a5c3e353c73555ca3574/app/server/ruby/lib/sonicpi/samplebuffer.rb) and [sonic-pi doc](https://github.com/samaaron/sonic-pi/blob/master/etc/doc/tutorial/A.12-sample-slicing.md) - aubio being used on sonic-pi
* [vamp-aubio-plugins](https://github.com/aubio/vamp-aubio-plugins)
* [ofxAubio](https://github.com/aubio/ofxAubio)

## TODO

- BPM
- get sample-rate instead of hardcoded 44100
- (with-pitch) example
- silence detector
- play of slice using sdl-mix or similar
