;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 3.0.12
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

(cffi:load-foreign-library "libaubio.so") 
(in-package :aubio)
(defmacro define-constant (name value &optional doc)
  `(defconstant ,name (if (boundp ',name) (symbol-value ',name) ,value)
                      ,@(when doc (list doc))))



(define-constant HAVE_AUBIO_DOUBLE 0)

(cl:export 'HAVE_AUBIO_DOUBLE)

(define-constant AUBIO_SMPL_FMT "%f")

(cl:export 'AUBIO_SMPL_FMT)

(define-constant AUBIO_LSMP_FMT "%lf")

(cl:export 'AUBIO_LSMP_FMT)

(cffi:defcstruct fvec_t
	(length :unsigned-int)
	(data :pointer))

(cl:export 'fvec_t)

(cl:export 'length)

(cl:export 'data)

(cffi:defcfun ("new_fvec" new_fvec) :pointer
  (length :unsigned-int))

(cl:export 'new_fvec)

(cffi:defcfun ("del_fvec" del_fvec) :void
  (s :pointer))

(cl:export 'del_fvec)

(cffi:defcfun ("fvec_get_sample" fvec_get_sample) :float
  (s :pointer)
  (position :unsigned-int))

(cl:export 'fvec_get_sample)

(cffi:defcfun ("fvec_set_sample" fvec_set_sample) :void
  (s :pointer)
  (data :float)
  (position :unsigned-int))

(cl:export 'fvec_set_sample)

(cffi:defcfun ("fvec_get_data" fvec_get_data) :pointer
  (s :pointer))

(cl:export 'fvec_get_data)

(cffi:defcfun ("fvec_print" fvec_print) :void
  (s :pointer))

(cl:export 'fvec_print)

(cffi:defcfun ("fvec_set_all" fvec_set_all) :void
  (s :pointer)
  (val :float))

(cl:export 'fvec_set_all)

(cffi:defcfun ("fvec_zeros" fvec_zeros) :void
  (s :pointer))

(cl:export 'fvec_zeros)

(cffi:defcfun ("fvec_ones" fvec_ones) :void
  (s :pointer))

(cl:export 'fvec_ones)

(cffi:defcfun ("fvec_rev" fvec_rev) :void
  (s :pointer))

(cl:export 'fvec_rev)

(cffi:defcfun ("fvec_weight" fvec_weight) :void
  (s :pointer)
  (weight :pointer))

(cl:export 'fvec_weight)

(cffi:defcfun ("fvec_copy" fvec_copy) :void
  (s :pointer)
  (t_arg1 :pointer))

(cl:export 'fvec_copy)

(cffi:defcfun ("fvec_weighted_copy" fvec_weighted_copy) :void
  (in :pointer)
  (weight :pointer)
  (out :pointer))

(cl:export 'fvec_weighted_copy)

(cffi:defcstruct cvec_t
	(length :unsigned-int)
	(norm :pointer)
	(phas :pointer))

(cl:export 'cvec_t)

(cl:export 'length)

(cl:export 'norm)

(cl:export 'phas)

(cffi:defcfun ("new_cvec" new_cvec) :pointer
  (length :unsigned-int))

(cl:export 'new_cvec)

(cffi:defcfun ("del_cvec" del_cvec) :void
  (s :pointer))

(cl:export 'del_cvec)

(cffi:defcfun ("cvec_norm_set_sample" cvec_norm_set_sample) :void
  (s :pointer)
  (val :float)
  (position :unsigned-int))

(cl:export 'cvec_norm_set_sample)

(cffi:defcfun ("cvec_phas_set_sample" cvec_phas_set_sample) :void
  (s :pointer)
  (val :float)
  (position :unsigned-int))

(cl:export 'cvec_phas_set_sample)

(cffi:defcfun ("cvec_norm_get_sample" cvec_norm_get_sample) :float
  (s :pointer)
  (position :unsigned-int))

(cl:export 'cvec_norm_get_sample)

(cffi:defcfun ("cvec_phas_get_sample" cvec_phas_get_sample) :float
  (s :pointer)
  (position :unsigned-int))

(cl:export 'cvec_phas_get_sample)

(cffi:defcfun ("cvec_norm_get_data" cvec_norm_get_data) :pointer
  (s :pointer))

(cl:export 'cvec_norm_get_data)

(cffi:defcfun ("cvec_phas_get_data" cvec_phas_get_data) :pointer
  (s :pointer))

(cl:export 'cvec_phas_get_data)

(cffi:defcfun ("cvec_print" cvec_print) :void
  (s :pointer))

(cl:export 'cvec_print)

(cffi:defcfun ("cvec_copy" cvec_copy) :void
  (s :pointer)
  (t_arg1 :pointer))

(cl:export 'cvec_copy)

(cffi:defcfun ("cvec_norm_set_all" cvec_norm_set_all) :void
  (s :pointer)
  (val :float))

(cl:export 'cvec_norm_set_all)

(cffi:defcfun ("cvec_norm_zeros" cvec_norm_zeros) :void
  (s :pointer))

(cl:export 'cvec_norm_zeros)

(cffi:defcfun ("cvec_norm_ones" cvec_norm_ones) :void
  (s :pointer))

(cl:export 'cvec_norm_ones)

(cffi:defcfun ("cvec_phas_set_all" cvec_phas_set_all) :void
  (s :pointer)
  (val :float))

(cl:export 'cvec_phas_set_all)

(cffi:defcfun ("cvec_phas_zeros" cvec_phas_zeros) :void
  (s :pointer))

(cl:export 'cvec_phas_zeros)

(cffi:defcfun ("cvec_phas_ones" cvec_phas_ones) :void
  (s :pointer))

(cl:export 'cvec_phas_ones)

(cffi:defcfun ("cvec_zeros" cvec_zeros) :void
  (s :pointer))

(cl:export 'cvec_zeros)

(cffi:defcfun ("cvec_logmag" cvec_logmag) :void
  (s :pointer)
  (lambda :float))

(cl:export 'cvec_logmag)

(cffi:defcstruct lvec_t
	(length :unsigned-int)
	(data :pointer))

(cl:export 'lvec_t)

(cl:export 'length)

(cl:export 'data)

(cffi:defcfun ("new_lvec" new_lvec) :pointer
  (length :unsigned-int))

(cl:export 'new_lvec)

(cffi:defcfun ("del_lvec" del_lvec) :void
  (s :pointer))

(cl:export 'del_lvec)

(cffi:defcfun ("lvec_get_sample" lvec_get_sample) :double
  (s :pointer)
  (position :unsigned-int))

(cl:export 'lvec_get_sample)

(cffi:defcfun ("lvec_set_sample" lvec_set_sample) :void
  (s :pointer)
  (data :double)
  (position :unsigned-int))

(cl:export 'lvec_set_sample)

(cffi:defcfun ("lvec_get_data" lvec_get_data) :pointer
  (s :pointer))

(cl:export 'lvec_get_data)

(cffi:defcfun ("lvec_print" lvec_print) :void
  (s :pointer))

(cl:export 'lvec_print)

(cffi:defcfun ("lvec_set_all" lvec_set_all) :void
  (s :pointer)
  (val :float))

(cl:export 'lvec_set_all)

(cffi:defcfun ("lvec_zeros" lvec_zeros) :void
  (s :pointer))

(cl:export 'lvec_zeros)

(cffi:defcfun ("lvec_ones" lvec_ones) :void
  (s :pointer))

(cl:export 'lvec_ones)

(cffi:defcstruct fmat_t
	(length :unsigned-int)
	(height :unsigned-int)
	(data :pointer))

(cl:export 'fmat_t)

(cl:export 'length)

(cl:export 'height)

(cl:export 'data)

(cffi:defcfun ("new_fmat" new_fmat) :pointer
  (height :unsigned-int)
  (length :unsigned-int))

(cl:export 'new_fmat)

(cffi:defcfun ("del_fmat" del_fmat) :void
  (s :pointer))

(cl:export 'del_fmat)

(cffi:defcfun ("fmat_get_sample" fmat_get_sample) :float
  (s :pointer)
  (channel :unsigned-int)
  (position :unsigned-int))

(cl:export 'fmat_get_sample)

(cffi:defcfun ("fmat_set_sample" fmat_set_sample) :void
  (s :pointer)
  (data :float)
  (channel :unsigned-int)
  (position :unsigned-int))

(cl:export 'fmat_set_sample)

(cffi:defcfun ("fmat_get_channel" fmat_get_channel) :void
  (s :pointer)
  (channel :unsigned-int)
  (output :pointer))

(cl:export 'fmat_get_channel)

(cffi:defcfun ("fmat_get_channel_data" fmat_get_channel_data) :pointer
  (s :pointer)
  (channel :unsigned-int))

(cl:export 'fmat_get_channel_data)

(cffi:defcfun ("fmat_get_data" fmat_get_data) :pointer
  (s :pointer))

(cl:export 'fmat_get_data)

(cffi:defcfun ("fmat_print" fmat_print) :void
  (s :pointer))

(cl:export 'fmat_print)

(cffi:defcfun ("fmat_set" fmat_set) :void
  (s :pointer)
  (val :float))

(cl:export 'fmat_set)

(cffi:defcfun ("fmat_zeros" fmat_zeros) :void
  (s :pointer))

(cl:export 'fmat_zeros)

(cffi:defcfun ("fmat_ones" fmat_ones) :void
  (s :pointer))

(cl:export 'fmat_ones)

(cffi:defcfun ("fmat_rev" fmat_rev) :void
  (s :pointer))

(cl:export 'fmat_rev)

(cffi:defcfun ("fmat_weight" fmat_weight) :void
  (s :pointer)
  (weight :pointer))

(cl:export 'fmat_weight)

(cffi:defcfun ("fmat_copy" fmat_copy) :void
  (s :pointer)
  (t_arg1 :pointer))

(cl:export 'fmat_copy)

(cffi:defcfun ("fmat_vecmul" fmat_vecmul) :void
  (s :pointer)
  (scale :pointer)
  (output :pointer))

(cl:export 'fmat_vecmul)

(cffi:defcfun ("new_aubio_window" new_aubio_window) :pointer
  (window_type :string)
  (size :unsigned-int))

(cl:export 'new_aubio_window)

(cffi:defcfun ("fvec_set_window" fvec_set_window) :unsigned-int
  (window :pointer)
  (window_type :string))

(cl:export 'fvec_set_window)

(cffi:defcfun ("aubio_unwrap2pi" aubio_unwrap2pi) :float
  (phase :float))

(cl:export 'aubio_unwrap2pi)

(cffi:defcfun ("aubio_bintomidi" aubio_bintomidi) :float
  (bin :float)
  (samplerate :float)
  (fftsize :float))

(cl:export 'aubio_bintomidi)

(cffi:defcfun ("aubio_miditobin" aubio_miditobin) :float
  (midi :float)
  (samplerate :float)
  (fftsize :float))

(cl:export 'aubio_miditobin)

(cffi:defcfun ("aubio_bintofreq" aubio_bintofreq) :float
  (bin :float)
  (samplerate :float)
  (fftsize :float))

(cl:export 'aubio_bintofreq)

(cffi:defcfun ("aubio_freqtobin" aubio_freqtobin) :float
  (freq :float)
  (samplerate :float)
  (fftsize :float))

(cl:export 'aubio_freqtobin)

(cffi:defcfun ("aubio_freqtomidi" aubio_freqtomidi) :float
  (freq :float))

(cl:export 'aubio_freqtomidi)

(cffi:defcfun ("aubio_miditofreq" aubio_miditofreq) :float
  (midi :float))

(cl:export 'aubio_miditofreq)

(cffi:defcfun ("aubio_cleanup" aubio_cleanup) :void)

(cl:export 'aubio_cleanup)

(cffi:defcfun ("aubio_zero_crossing_rate" aubio_zero_crossing_rate) :float
  (v :pointer))

(cl:export 'aubio_zero_crossing_rate)

(cffi:defcfun ("aubio_level_lin" aubio_level_lin) :float
  (v :pointer))

(cl:export 'aubio_level_lin)

(cffi:defcfun ("aubio_db_spl" aubio_db_spl) :float
  (v :pointer))

(cl:export 'aubio_db_spl)

(cffi:defcfun ("aubio_silence_detection" aubio_silence_detection) :unsigned-int
  (v :pointer)
  (threshold :float))

(cl:export 'aubio_silence_detection)

(cffi:defcfun ("aubio_level_detection" aubio_level_detection) :float
  (v :pointer)
  (threshold :float))

(cl:export 'aubio_level_detection)

(cffi:defcfun ("fvec_clamp" fvec_clamp) :void
  (in :pointer)
  (absmax :float))

(cl:export 'fvec_clamp)

(cffi:defcfun ("fvec_exp" fvec_exp) :void
  (s :pointer))

(cl:export 'fvec_exp)

(cffi:defcfun ("fvec_cos" fvec_cos) :void
  (s :pointer))

(cl:export 'fvec_cos)

(cffi:defcfun ("fvec_sin" fvec_sin) :void
  (s :pointer))

(cl:export 'fvec_sin)

(cffi:defcfun ("fvec_abs" fvec_abs) :void
  (s :pointer))

(cl:export 'fvec_abs)

(cffi:defcfun ("fvec_sqrt" fvec_sqrt) :void
  (s :pointer))

(cl:export 'fvec_sqrt)

(cffi:defcfun ("fvec_log10" fvec_log10) :void
  (s :pointer))

(cl:export 'fvec_log10)

(cffi:defcfun ("fvec_log" fvec_log) :void
  (s :pointer))

(cl:export 'fvec_log)

(cffi:defcfun ("fvec_floor" fvec_floor) :void
  (s :pointer))

(cl:export 'fvec_floor)

(cffi:defcfun ("fvec_ceil" fvec_ceil) :void
  (s :pointer))

(cl:export 'fvec_ceil)

(cffi:defcfun ("fvec_round" fvec_round) :void
  (s :pointer))

(cl:export 'fvec_round)

(cffi:defcfun ("fvec_pow" fvec_pow) :void
  (s :pointer)
  (pow :float))

(cl:export 'fvec_pow)

(cffi:defcfun ("new_aubio_resampler" new_aubio_resampler) :pointer
  (ratio :float)
  (type :unsigned-int))

(cl:export 'new_aubio_resampler)

(cffi:defcfun ("del_aubio_resampler" del_aubio_resampler) :void
  (s :pointer))

(cl:export 'del_aubio_resampler)

(cffi:defcfun ("aubio_resampler_do" aubio_resampler_do) :void
  (s :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_resampler_do)

(cffi:defcfun ("aubio_filter_do" aubio_filter_do) :void
  (f :pointer)
  (in :pointer))

(cl:export 'aubio_filter_do)

(cffi:defcfun ("aubio_filter_do_outplace" aubio_filter_do_outplace) :void
  (f :pointer)
  (in :pointer)
  (out :pointer))

(cl:export 'aubio_filter_do_outplace)

(cffi:defcfun ("aubio_filter_do_filtfilt" aubio_filter_do_filtfilt) :void
  (f :pointer)
  (in :pointer)
  (tmp :pointer))

(cl:export 'aubio_filter_do_filtfilt)

(cffi:defcfun ("aubio_filter_get_feedback" aubio_filter_get_feedback) :pointer
  (f :pointer))

(cl:export 'aubio_filter_get_feedback)

(cffi:defcfun ("aubio_filter_get_feedforward" aubio_filter_get_feedforward) :pointer
  (f :pointer))

(cl:export 'aubio_filter_get_feedforward)

(cffi:defcfun ("aubio_filter_get_order" aubio_filter_get_order) :unsigned-int
  (f :pointer))

(cl:export 'aubio_filter_get_order)

(cffi:defcfun ("aubio_filter_get_samplerate" aubio_filter_get_samplerate) :unsigned-int
  (f :pointer))

(cl:export 'aubio_filter_get_samplerate)

(cffi:defcfun ("aubio_filter_set_samplerate" aubio_filter_set_samplerate) :unsigned-int
  (f :pointer)
  (samplerate :unsigned-int))

(cl:export 'aubio_filter_set_samplerate)

(cffi:defcfun ("aubio_filter_do_reset" aubio_filter_do_reset) :void
  (f :pointer))

(cl:export 'aubio_filter_do_reset)

(cffi:defcfun ("new_aubio_filter" new_aubio_filter) :pointer
  (order :unsigned-int))

(cl:export 'new_aubio_filter)

(cffi:defcfun ("del_aubio_filter" del_aubio_filter) :void
  (f :pointer))

(cl:export 'del_aubio_filter)

(cffi:defcfun ("aubio_filter_set_biquad" aubio_filter_set_biquad) :unsigned-int
  (f :pointer)
  (b0 :double)
  (b1 :double)
  (b2 :double)
  (a1 :double)
  (a2 :double))

(cl:export 'aubio_filter_set_biquad)

(cffi:defcfun ("new_aubio_filter_biquad" new_aubio_filter_biquad) :pointer
  (b0 :double)
  (b1 :double)
  (b2 :double)
  (a1 :double)
  (a2 :double))

(cl:export 'new_aubio_filter_biquad)

(cffi:defcfun ("new_aubio_filter_a_weighting" new_aubio_filter_a_weighting) :pointer
  (samplerate :unsigned-int))

(cl:export 'new_aubio_filter_a_weighting)

(cffi:defcfun ("aubio_filter_set_a_weighting" aubio_filter_set_a_weighting) :unsigned-int
  (f :pointer)
  (samplerate :unsigned-int))

(cl:export 'aubio_filter_set_a_weighting)

(cffi:defcfun ("new_aubio_filter_c_weighting" new_aubio_filter_c_weighting) :pointer
  (samplerate :unsigned-int))

(cl:export 'new_aubio_filter_c_weighting)

(cffi:defcfun ("aubio_filter_set_c_weighting" aubio_filter_set_c_weighting) :unsigned-int
  (f :pointer)
  (samplerate :unsigned-int))

(cl:export 'aubio_filter_set_c_weighting)

(cffi:defcfun ("new_aubio_fft" new_aubio_fft) :pointer
  (size :unsigned-int))

(cl:export 'new_aubio_fft)

(cffi:defcfun ("del_aubio_fft" del_aubio_fft) :void
  (s :pointer))

(cl:export 'del_aubio_fft)

(cffi:defcfun ("aubio_fft_do" aubio_fft_do) :void
  (s :pointer)
  (input :pointer)
  (spectrum :pointer))

(cl:export 'aubio_fft_do)

(cffi:defcfun ("aubio_fft_rdo" aubio_fft_rdo) :void
  (s :pointer)
  (spectrum :pointer)
  (output :pointer))

(cl:export 'aubio_fft_rdo)

(cffi:defcfun ("aubio_fft_do_complex" aubio_fft_do_complex) :void
  (s :pointer)
  (input :pointer)
  (compspec :pointer))

(cl:export 'aubio_fft_do_complex)

(cffi:defcfun ("aubio_fft_rdo_complex" aubio_fft_rdo_complex) :void
  (s :pointer)
  (compspec :pointer)
  (output :pointer))

(cl:export 'aubio_fft_rdo_complex)

(cffi:defcfun ("aubio_fft_get_spectrum" aubio_fft_get_spectrum) :void
  (compspec :pointer)
  (spectrum :pointer))

(cl:export 'aubio_fft_get_spectrum)

(cffi:defcfun ("aubio_fft_get_realimag" aubio_fft_get_realimag) :void
  (spectrum :pointer)
  (compspec :pointer))

(cl:export 'aubio_fft_get_realimag)

(cffi:defcfun ("aubio_fft_get_phas" aubio_fft_get_phas) :void
  (compspec :pointer)
  (spectrum :pointer))

(cl:export 'aubio_fft_get_phas)

(cffi:defcfun ("aubio_fft_get_imag" aubio_fft_get_imag) :void
  (spectrum :pointer)
  (compspec :pointer))

(cl:export 'aubio_fft_get_imag)

(cffi:defcfun ("aubio_fft_get_norm" aubio_fft_get_norm) :void
  (compspec :pointer)
  (spectrum :pointer))

(cl:export 'aubio_fft_get_norm)

(cffi:defcfun ("aubio_fft_get_real" aubio_fft_get_real) :void
  (spectrum :pointer)
  (compspec :pointer))

(cl:export 'aubio_fft_get_real)

(cffi:defcfun ("new_aubio_dct" new_aubio_dct) :pointer
  (size :unsigned-int))

(cl:export 'new_aubio_dct)

(cffi:defcfun ("aubio_dct_do" aubio_dct_do) :void
  (s :pointer)
  (input :pointer)
  (dct_output :pointer))

(cl:export 'aubio_dct_do)

(cffi:defcfun ("aubio_dct_rdo" aubio_dct_rdo) :void
  (s :pointer)
  (input :pointer)
  (idct_output :pointer))

(cl:export 'aubio_dct_rdo)

(cffi:defcfun ("del_aubio_dct" del_aubio_dct) :void
  (s :pointer))

(cl:export 'del_aubio_dct)

(cffi:defcfun ("new_aubio_pvoc" new_aubio_pvoc) :pointer
  (win_s :unsigned-int)
  (hop_s :unsigned-int))

(cl:export 'new_aubio_pvoc)

(cffi:defcfun ("del_aubio_pvoc" del_aubio_pvoc) :void
  (pv :pointer))

(cl:export 'del_aubio_pvoc)

(cffi:defcfun ("aubio_pvoc_do" aubio_pvoc_do) :void
  (pv :pointer)
  (in :pointer)
  (fftgrain :pointer))

(cl:export 'aubio_pvoc_do)

(cffi:defcfun ("aubio_pvoc_rdo" aubio_pvoc_rdo) :void
  (pv :pointer)
  (fftgrain :pointer)
  (out :pointer))

(cl:export 'aubio_pvoc_rdo)

(cffi:defcfun ("aubio_pvoc_get_win" aubio_pvoc_get_win) :unsigned-int
  (pv :pointer))

(cl:export 'aubio_pvoc_get_win)

(cffi:defcfun ("aubio_pvoc_get_hop" aubio_pvoc_get_hop) :unsigned-int
  (pv :pointer))

(cl:export 'aubio_pvoc_get_hop)

(cffi:defcfun ("aubio_pvoc_set_window" aubio_pvoc_set_window) :unsigned-int
  (pv :pointer)
  (window_type :string))

(cl:export 'aubio_pvoc_set_window)

(cffi:defcfun ("new_aubio_filterbank" new_aubio_filterbank) :pointer
  (n_filters :unsigned-int)
  (win_s :unsigned-int))

(cl:export 'new_aubio_filterbank)

(cffi:defcfun ("del_aubio_filterbank" del_aubio_filterbank) :void
  (f :pointer))

(cl:export 'del_aubio_filterbank)

(cffi:defcfun ("aubio_filterbank_do" aubio_filterbank_do) :void
  (f :pointer)
  (in :pointer)
  (out :pointer))

(cl:export 'aubio_filterbank_do)

(cffi:defcfun ("aubio_filterbank_get_coeffs" aubio_filterbank_get_coeffs) :pointer
  (f :pointer))

(cl:export 'aubio_filterbank_get_coeffs)

(cffi:defcfun ("aubio_filterbank_set_coeffs" aubio_filterbank_set_coeffs) :unsigned-int
  (f :pointer)
  (filters :pointer))

(cl:export 'aubio_filterbank_set_coeffs)

(cffi:defcfun ("aubio_filterbank_set_triangle_bands" aubio_filterbank_set_triangle_bands) :unsigned-int
  (fb :pointer)
  (freqs :pointer)
  (samplerate :float))

(cl:export 'aubio_filterbank_set_triangle_bands)

(cffi:defcfun ("aubio_filterbank_set_mel_coeffs_slaney" aubio_filterbank_set_mel_coeffs_slaney) :unsigned-int
  (fb :pointer)
  (samplerate :float))

(cl:export 'aubio_filterbank_set_mel_coeffs_slaney)

(cffi:defcfun ("new_aubio_mfcc" new_aubio_mfcc) :pointer
  (buf_size :unsigned-int)
  (n_filters :unsigned-int)
  (n_coeffs :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_mfcc)

(cffi:defcfun ("del_aubio_mfcc" del_aubio_mfcc) :void
  (mf :pointer))

(cl:export 'del_aubio_mfcc)

(cffi:defcfun ("aubio_mfcc_do" aubio_mfcc_do) :void
  (mf :pointer)
  (in :pointer)
  (out :pointer))

(cl:export 'aubio_mfcc_do)

(cffi:defcfun ("aubio_specdesc_do" aubio_specdesc_do) :void
  (o :pointer)
  (fftgrain :pointer)
  (desc :pointer))

(cl:export 'aubio_specdesc_do)

(cffi:defcfun ("new_aubio_specdesc" new_aubio_specdesc) :pointer
  (method :string)
  (buf_size :unsigned-int))

(cl:export 'new_aubio_specdesc)

(cffi:defcfun ("del_aubio_specdesc" del_aubio_specdesc) :void
  (o :pointer))

(cl:export 'del_aubio_specdesc)

(cffi:defcfun ("aubio_spectral_whitening_do" aubio_spectral_whitening_do) :void
  (o :pointer)
  (fftgrain :pointer))

(cl:export 'aubio_spectral_whitening_do)

(cffi:defcfun ("new_aubio_spectral_whitening" new_aubio_spectral_whitening) :pointer
  (buf_size :unsigned-int)
  (hop_size :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_spectral_whitening)

(cffi:defcfun ("aubio_spectral_whitening_reset" aubio_spectral_whitening_reset) :void
  (o :pointer))

(cl:export 'aubio_spectral_whitening_reset)

(cffi:defcfun ("aubio_spectral_whitening_set_relax_time" aubio_spectral_whitening_set_relax_time) :unsigned-int
  (o :pointer)
  (relax_time :float))

(cl:export 'aubio_spectral_whitening_set_relax_time)

(cffi:defcfun ("aubio_spectral_whitening_get_relax_time" aubio_spectral_whitening_get_relax_time) :float
  (o :pointer))

(cl:export 'aubio_spectral_whitening_get_relax_time)

(cffi:defcfun ("aubio_spectral_whitening_set_floor" aubio_spectral_whitening_set_floor) :unsigned-int
  (o :pointer)
  (floor :float))

(cl:export 'aubio_spectral_whitening_set_floor)

(cffi:defcfun ("aubio_spectral_whitening_get_floor" aubio_spectral_whitening_get_floor) :float
  (o :pointer))

(cl:export 'aubio_spectral_whitening_get_floor)

(cffi:defcfun ("del_aubio_spectral_whitening" del_aubio_spectral_whitening) :void
  (o :pointer))

(cl:export 'del_aubio_spectral_whitening)

(cffi:defcfun ("new_aubio_tss" new_aubio_tss) :pointer
  (buf_size :unsigned-int)
  (hop_size :unsigned-int))

(cl:export 'new_aubio_tss)

(cffi:defcfun ("del_aubio_tss" del_aubio_tss) :void
  (o :pointer))

(cl:export 'del_aubio_tss)

(cffi:defcfun ("aubio_tss_do" aubio_tss_do) :void
  (o :pointer)
  (input :pointer)
  (trans :pointer)
  (stead :pointer))

(cl:export 'aubio_tss_do)

(cffi:defcfun ("aubio_tss_set_threshold" aubio_tss_set_threshold) :unsigned-int
  (o :pointer)
  (thrs :float))

(cl:export 'aubio_tss_set_threshold)

(cffi:defcfun ("aubio_tss_set_alpha" aubio_tss_set_alpha) :unsigned-int
  (o :pointer)
  (alpha :float))

(cl:export 'aubio_tss_set_alpha)

(cffi:defcfun ("aubio_tss_set_beta" aubio_tss_set_beta) :unsigned-int
  (o :pointer)
  (beta :float))

(cl:export 'aubio_tss_set_beta)

(cffi:defcfun ("aubio_pitch_do" aubio_pitch_do) :void
  (o :pointer)
  (in :pointer)
  (out :pointer))

(cl:export 'aubio_pitch_do)

(cffi:defcfun ("aubio_pitch_set_tolerance" aubio_pitch_set_tolerance) :unsigned-int
  (o :pointer)
  (tol :float))

(cl:export 'aubio_pitch_set_tolerance)

(cffi:defcfun ("aubio_pitch_get_tolerance" aubio_pitch_get_tolerance) :float
  (o :pointer))

(cl:export 'aubio_pitch_get_tolerance)

(cffi:defcfun ("del_aubio_pitch" del_aubio_pitch) :void
  (o :pointer))

(cl:export 'del_aubio_pitch)

(cffi:defcfun ("new_aubio_pitch" new_aubio_pitch) :pointer
  (method :string)
  (buf_size :unsigned-int)
  (hop_size :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_pitch)

(cffi:defcfun ("aubio_pitch_set_unit" aubio_pitch_set_unit) :unsigned-int
  (o :pointer)
  (mode :string))

(cl:export 'aubio_pitch_set_unit)

(cffi:defcfun ("aubio_pitch_set_silence" aubio_pitch_set_silence) :unsigned-int
  (o :pointer)
  (silence :float))

(cl:export 'aubio_pitch_set_silence)

(cffi:defcfun ("aubio_pitch_get_silence" aubio_pitch_get_silence) :float
  (o :pointer))

(cl:export 'aubio_pitch_get_silence)

(cffi:defcfun ("aubio_pitch_get_confidence" aubio_pitch_get_confidence) :float
  (o :pointer))

(cl:export 'aubio_pitch_get_confidence)

(cffi:defcfun ("new_aubio_onset" new_aubio_onset) :pointer
  (method :string)
  (buf_size :unsigned-int)
  (hop_size :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_onset)

(cffi:defcfun ("aubio_onset_do" aubio_onset_do) :void
  (o :pointer)
  (input :pointer)
  (onset :pointer))

(cl:export 'aubio_onset_do)

(cffi:defcfun ("aubio_onset_get_last" aubio_onset_get_last) :unsigned-int
  (o :pointer))

(cl:export 'aubio_onset_get_last)

(cffi:defcfun ("aubio_onset_get_last_s" aubio_onset_get_last_s) :float
  (o :pointer))

(cl:export 'aubio_onset_get_last_s)

(cffi:defcfun ("aubio_onset_get_last_ms" aubio_onset_get_last_ms) :float
  (o :pointer))

(cl:export 'aubio_onset_get_last_ms)

(cffi:defcfun ("aubio_onset_set_awhitening" aubio_onset_set_awhitening) :unsigned-int
  (o :pointer)
  (enable :unsigned-int))

(cl:export 'aubio_onset_set_awhitening)

(cffi:defcfun ("aubio_onset_get_awhitening" aubio_onset_get_awhitening) :float
  (o :pointer))

(cl:export 'aubio_onset_get_awhitening)

(cffi:defcfun ("aubio_onset_set_compression" aubio_onset_set_compression) :unsigned-int
  (o :pointer)
  (lambda :float))

(cl:export 'aubio_onset_set_compression)

(cffi:defcfun ("aubio_onset_get_compression" aubio_onset_get_compression) :float
  (o :pointer))

(cl:export 'aubio_onset_get_compression)

(cffi:defcfun ("aubio_onset_set_silence" aubio_onset_set_silence) :unsigned-int
  (o :pointer)
  (silence :float))

(cl:export 'aubio_onset_set_silence)

(cffi:defcfun ("aubio_onset_get_silence" aubio_onset_get_silence) :float
  (o :pointer))

(cl:export 'aubio_onset_get_silence)

(cffi:defcfun ("aubio_onset_get_descriptor" aubio_onset_get_descriptor) :float
  (o :pointer))

(cl:export 'aubio_onset_get_descriptor)

(cffi:defcfun ("aubio_onset_get_thresholded_descriptor" aubio_onset_get_thresholded_descriptor) :float
  (o :pointer))

(cl:export 'aubio_onset_get_thresholded_descriptor)

(cffi:defcfun ("aubio_onset_set_threshold" aubio_onset_set_threshold) :unsigned-int
  (o :pointer)
  (threshold :float))

(cl:export 'aubio_onset_set_threshold)

(cffi:defcfun ("aubio_onset_set_minioi" aubio_onset_set_minioi) :unsigned-int
  (o :pointer)
  (minioi :unsigned-int))

(cl:export 'aubio_onset_set_minioi)

(cffi:defcfun ("aubio_onset_set_minioi_s" aubio_onset_set_minioi_s) :unsigned-int
  (o :pointer)
  (minioi :float))

(cl:export 'aubio_onset_set_minioi_s)

(cffi:defcfun ("aubio_onset_set_minioi_ms" aubio_onset_set_minioi_ms) :unsigned-int
  (o :pointer)
  (minioi :float))

(cl:export 'aubio_onset_set_minioi_ms)

(cffi:defcfun ("aubio_onset_set_delay" aubio_onset_set_delay) :unsigned-int
  (o :pointer)
  (delay :unsigned-int))

(cl:export 'aubio_onset_set_delay)

(cffi:defcfun ("aubio_onset_set_delay_s" aubio_onset_set_delay_s) :unsigned-int
  (o :pointer)
  (delay :float))

(cl:export 'aubio_onset_set_delay_s)

(cffi:defcfun ("aubio_onset_set_delay_ms" aubio_onset_set_delay_ms) :unsigned-int
  (o :pointer)
  (delay :float))

(cl:export 'aubio_onset_set_delay_ms)

(cffi:defcfun ("aubio_onset_get_minioi" aubio_onset_get_minioi) :unsigned-int
  (o :pointer))

(cl:export 'aubio_onset_get_minioi)

(cffi:defcfun ("aubio_onset_get_minioi_s" aubio_onset_get_minioi_s) :float
  (o :pointer))

(cl:export 'aubio_onset_get_minioi_s)

(cffi:defcfun ("aubio_onset_get_minioi_ms" aubio_onset_get_minioi_ms) :float
  (o :pointer))

(cl:export 'aubio_onset_get_minioi_ms)

(cffi:defcfun ("aubio_onset_get_delay" aubio_onset_get_delay) :unsigned-int
  (o :pointer))

(cl:export 'aubio_onset_get_delay)

(cffi:defcfun ("aubio_onset_get_delay_s" aubio_onset_get_delay_s) :float
  (o :pointer))

(cl:export 'aubio_onset_get_delay_s)

(cffi:defcfun ("aubio_onset_get_delay_ms" aubio_onset_get_delay_ms) :float
  (o :pointer))

(cl:export 'aubio_onset_get_delay_ms)

(cffi:defcfun ("aubio_onset_get_threshold" aubio_onset_get_threshold) :float
  (o :pointer))

(cl:export 'aubio_onset_get_threshold)

(cffi:defcfun ("aubio_onset_set_default_parameters" aubio_onset_set_default_parameters) :unsigned-int
  (o :pointer)
  (onset_mode :string))

(cl:export 'aubio_onset_set_default_parameters)

(cffi:defcfun ("aubio_onset_reset" aubio_onset_reset) :void
  (o :pointer))

(cl:export 'aubio_onset_reset)

(cffi:defcfun ("del_aubio_onset" del_aubio_onset) :void
  (o :pointer))

(cl:export 'del_aubio_onset)

(cffi:defcfun ("new_aubio_tempo" new_aubio_tempo) :pointer
  (method :string)
  (buf_size :unsigned-int)
  (hop_size :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_tempo)

(cffi:defcfun ("aubio_tempo_do" aubio_tempo_do) :void
  (o :pointer)
  (input :pointer)
  (tempo :pointer))

(cl:export 'aubio_tempo_do)

(cffi:defcfun ("aubio_tempo_get_last" aubio_tempo_get_last) :unsigned-int
  (o :pointer))

(cl:export 'aubio_tempo_get_last)

(cffi:defcfun ("aubio_tempo_get_last_s" aubio_tempo_get_last_s) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_last_s)

(cffi:defcfun ("aubio_tempo_get_last_ms" aubio_tempo_get_last_ms) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_last_ms)

(cffi:defcfun ("aubio_tempo_set_silence" aubio_tempo_set_silence) :unsigned-int
  (o :pointer)
  (silence :float))

(cl:export 'aubio_tempo_set_silence)

(cffi:defcfun ("aubio_tempo_get_silence" aubio_tempo_get_silence) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_silence)

(cffi:defcfun ("aubio_tempo_set_threshold" aubio_tempo_set_threshold) :unsigned-int
  (o :pointer)
  (threshold :float))

(cl:export 'aubio_tempo_set_threshold)

(cffi:defcfun ("aubio_tempo_get_threshold" aubio_tempo_get_threshold) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_threshold)

(cffi:defcfun ("aubio_tempo_get_period" aubio_tempo_get_period) :float
  (bt :pointer))

(cl:export 'aubio_tempo_get_period)

(cffi:defcfun ("aubio_tempo_get_period_s" aubio_tempo_get_period_s) :float
  (bt :pointer))

(cl:export 'aubio_tempo_get_period_s)

(cffi:defcfun ("aubio_tempo_get_bpm" aubio_tempo_get_bpm) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_bpm)

(cffi:defcfun ("aubio_tempo_get_confidence" aubio_tempo_get_confidence) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_confidence)

(cffi:defcfun ("aubio_tempo_set_tatum_signature" aubio_tempo_set_tatum_signature) :unsigned-int
  (o :pointer)
  (signature :unsigned-int))

(cl:export 'aubio_tempo_set_tatum_signature)

(cffi:defcfun ("aubio_tempo_was_tatum" aubio_tempo_was_tatum) :unsigned-int
  (o :pointer))

(cl:export 'aubio_tempo_was_tatum)

(cffi:defcfun ("aubio_tempo_get_last_tatum" aubio_tempo_get_last_tatum) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_last_tatum)

(cffi:defcfun ("aubio_tempo_get_delay" aubio_tempo_get_delay) :unsigned-int
  (o :pointer))

(cl:export 'aubio_tempo_get_delay)

(cffi:defcfun ("aubio_tempo_get_delay_s" aubio_tempo_get_delay_s) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_delay_s)

(cffi:defcfun ("aubio_tempo_get_delay_ms" aubio_tempo_get_delay_ms) :float
  (o :pointer))

(cl:export 'aubio_tempo_get_delay_ms)

(cffi:defcfun ("aubio_tempo_set_delay" aubio_tempo_set_delay) :unsigned-int
  (o :pointer)
  (delay :int))

(cl:export 'aubio_tempo_set_delay)

(cffi:defcfun ("aubio_tempo_set_delay_s" aubio_tempo_set_delay_s) :unsigned-int
  (o :pointer)
  (delay :float))

(cl:export 'aubio_tempo_set_delay_s)

(cffi:defcfun ("aubio_tempo_set_delay_ms" aubio_tempo_set_delay_ms) :unsigned-int
  (o :pointer)
  (delay :float))

(cl:export 'aubio_tempo_set_delay_ms)

(cffi:defcfun ("del_aubio_tempo" del_aubio_tempo) :void
  (o :pointer))

(cl:export 'del_aubio_tempo)

(cffi:defcfun ("new_aubio_notes" new_aubio_notes) :pointer
  (method :string)
  (buf_size :unsigned-int)
  (hop_size :unsigned-int)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_notes)

(cffi:defcfun ("del_aubio_notes" del_aubio_notes) :void
  (o :pointer))

(cl:export 'del_aubio_notes)

(cffi:defcfun ("aubio_notes_do" aubio_notes_do) :void
  (o :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_notes_do)

(cffi:defcfun ("aubio_notes_set_silence" aubio_notes_set_silence) :unsigned-int
  (o :pointer)
  (silence :float))

(cl:export 'aubio_notes_set_silence)

(cffi:defcfun ("aubio_notes_get_silence" aubio_notes_get_silence) :float
  (o :pointer))

(cl:export 'aubio_notes_get_silence)

(cffi:defcfun ("aubio_notes_get_minioi_ms" aubio_notes_get_minioi_ms) :float
  (o :pointer))

(cl:export 'aubio_notes_get_minioi_ms)

(cffi:defcfun ("aubio_notes_set_minioi_ms" aubio_notes_set_minioi_ms) :unsigned-int
  (o :pointer)
  (minioi_ms :float))

(cl:export 'aubio_notes_set_minioi_ms)

(cffi:defcfun ("new_aubio_source" new_aubio_source) :pointer
  (uri :string)
  (samplerate :unsigned-int)
  (hop_size :unsigned-int))

(cl:export 'new_aubio_source)

(cffi:defcfun ("aubio_source_do" aubio_source_do) :void
  (s :pointer)
  (read_to :pointer)
  (read :pointer))

(cl:export 'aubio_source_do)

(cffi:defcfun ("aubio_source_do_multi" aubio_source_do_multi) :void
  (s :pointer)
  (read_to :pointer)
  (read :pointer))

(cl:export 'aubio_source_do_multi)

(cffi:defcfun ("aubio_source_get_samplerate" aubio_source_get_samplerate) :unsigned-int
  (s :pointer))

(cl:export 'aubio_source_get_samplerate)

(cffi:defcfun ("aubio_source_get_channels" aubio_source_get_channels) :unsigned-int
  (s :pointer))

(cl:export 'aubio_source_get_channels)

(cffi:defcfun ("aubio_source_seek" aubio_source_seek) :unsigned-int
  (s :pointer)
  (pos :unsigned-int))

(cl:export 'aubio_source_seek)

(cffi:defcfun ("aubio_source_get_duration" aubio_source_get_duration) :unsigned-int
  (s :pointer))

(cl:export 'aubio_source_get_duration)

(cffi:defcfun ("aubio_source_close" aubio_source_close) :unsigned-int
  (s :pointer))

(cl:export 'aubio_source_close)

(cffi:defcfun ("del_aubio_source" del_aubio_source) :void
  (s :pointer))

(cl:export 'del_aubio_source)

(cffi:defcfun ("new_aubio_sink" new_aubio_sink) :pointer
  (uri :string)
  (samplerate :unsigned-int))

(cl:export 'new_aubio_sink)

(cffi:defcfun ("aubio_sink_preset_samplerate" aubio_sink_preset_samplerate) :unsigned-int
  (s :pointer)
  (samplerate :unsigned-int))

(cl:export 'aubio_sink_preset_samplerate)

(cffi:defcfun ("aubio_sink_preset_channels" aubio_sink_preset_channels) :unsigned-int
  (s :pointer)
  (channels :unsigned-int))

(cl:export 'aubio_sink_preset_channels)

(cffi:defcfun ("aubio_sink_get_samplerate" aubio_sink_get_samplerate) :unsigned-int
  (s :pointer))

(cl:export 'aubio_sink_get_samplerate)

(cffi:defcfun ("aubio_sink_get_channels" aubio_sink_get_channels) :unsigned-int
  (s :pointer))

(cl:export 'aubio_sink_get_channels)

(cffi:defcfun ("aubio_sink_do" aubio_sink_do) :void
  (s :pointer)
  (write_data :pointer)
  (write :unsigned-int))

(cl:export 'aubio_sink_do)

(cffi:defcfun ("aubio_sink_do_multi" aubio_sink_do_multi) :void
  (s :pointer)
  (write_data :pointer)
  (write :unsigned-int))

(cl:export 'aubio_sink_do_multi)

(cffi:defcfun ("aubio_sink_close" aubio_sink_close) :unsigned-int
  (s :pointer))

(cl:export 'aubio_sink_close)

(cffi:defcfun ("del_aubio_sink" del_aubio_sink) :void
  (s :pointer))

(cl:export 'del_aubio_sink)

(cffi:defcfun ("new_aubio_sampler" new_aubio_sampler) :pointer
  (samplerate :unsigned-int)
  (hop_size :unsigned-int))

(cl:export 'new_aubio_sampler)

(cffi:defcfun ("aubio_sampler_load" aubio_sampler_load) :unsigned-int
  (o :pointer)
  (uri :string))

(cl:export 'aubio_sampler_load)

(cffi:defcfun ("aubio_sampler_do" aubio_sampler_do) :void
  (o :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_sampler_do)

(cffi:defcfun ("aubio_sampler_do_multi" aubio_sampler_do_multi) :void
  (o :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_sampler_do_multi)

(cffi:defcfun ("aubio_sampler_get_playing" aubio_sampler_get_playing) :unsigned-int
  (o :pointer))

(cl:export 'aubio_sampler_get_playing)

(cffi:defcfun ("aubio_sampler_set_playing" aubio_sampler_set_playing) :unsigned-int
  (o :pointer)
  (playing :unsigned-int))

(cl:export 'aubio_sampler_set_playing)

(cffi:defcfun ("aubio_sampler_play" aubio_sampler_play) :unsigned-int
  (o :pointer))

(cl:export 'aubio_sampler_play)

(cffi:defcfun ("aubio_sampler_stop" aubio_sampler_stop) :unsigned-int
  (o :pointer))

(cl:export 'aubio_sampler_stop)

(cffi:defcfun ("del_aubio_sampler" del_aubio_sampler) :void
  (o :pointer))

(cl:export 'del_aubio_sampler)

(cffi:defcfun ("new_aubio_wavetable" new_aubio_wavetable) :pointer
  (samplerate :unsigned-int)
  (hop_size :unsigned-int))

(cl:export 'new_aubio_wavetable)

(cffi:defcfun ("aubio_wavetable_load" aubio_wavetable_load) :unsigned-int
  (o :pointer)
  (uri :string))

(cl:export 'aubio_wavetable_load)

(cffi:defcfun ("aubio_wavetable_do" aubio_wavetable_do) :void
  (o :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_wavetable_do)

(cffi:defcfun ("aubio_wavetable_do_multi" aubio_wavetable_do_multi) :void
  (o :pointer)
  (input :pointer)
  (output :pointer))

(cl:export 'aubio_wavetable_do_multi)

(cffi:defcfun ("aubio_wavetable_get_playing" aubio_wavetable_get_playing) :unsigned-int
  (o :pointer))

(cl:export 'aubio_wavetable_get_playing)

(cffi:defcfun ("aubio_wavetable_set_playing" aubio_wavetable_set_playing) :unsigned-int
  (o :pointer)
  (playing :unsigned-int))

(cl:export 'aubio_wavetable_set_playing)

(cffi:defcfun ("aubio_wavetable_play" aubio_wavetable_play) :unsigned-int
  (o :pointer))

(cl:export 'aubio_wavetable_play)

(cffi:defcfun ("aubio_wavetable_stop" aubio_wavetable_stop) :unsigned-int
  (o :pointer))

(cl:export 'aubio_wavetable_stop)

(cffi:defcfun ("aubio_wavetable_set_freq" aubio_wavetable_set_freq) :unsigned-int
  (o :pointer)
  (freq :float))

(cl:export 'aubio_wavetable_set_freq)

(cffi:defcfun ("aubio_wavetable_get_freq" aubio_wavetable_get_freq) :float
  (o :pointer))

(cl:export 'aubio_wavetable_get_freq)

(cffi:defcfun ("aubio_wavetable_set_amp" aubio_wavetable_set_amp) :unsigned-int
  (o :pointer)
  (amp :float))

(cl:export 'aubio_wavetable_set_amp)

(cffi:defcfun ("aubio_wavetable_get_amp" aubio_wavetable_get_amp) :float
  (o :pointer))

(cl:export 'aubio_wavetable_get_amp)

(cffi:defcfun ("del_aubio_wavetable" del_aubio_wavetable) :void
  (o :pointer))

(cl:export 'del_aubio_wavetable)

(cffi:defcfun ("new_aubio_parameter" new_aubio_parameter) :pointer
  (min_value :float)
  (max_value :float)
  (steps :unsigned-int))

(cl:export 'new_aubio_parameter)

(cffi:defcfun ("aubio_parameter_set_target_value" aubio_parameter_set_target_value) :unsigned-int
  (param :pointer)
  (value :float))

(cl:export 'aubio_parameter_set_target_value)

(cffi:defcfun ("aubio_parameter_get_next_value" aubio_parameter_get_next_value) :float
  (param :pointer))

(cl:export 'aubio_parameter_get_next_value)

(cffi:defcfun ("aubio_parameter_get_current_value" aubio_parameter_get_current_value) :float
  (param :pointer))

(cl:export 'aubio_parameter_get_current_value)

(cffi:defcfun ("aubio_parameter_set_current_value" aubio_parameter_set_current_value) :unsigned-int
  (param :pointer)
  (value :float))

(cl:export 'aubio_parameter_set_current_value)

(cffi:defcfun ("aubio_parameter_set_steps" aubio_parameter_set_steps) :unsigned-int
  (param :pointer)
  (steps :unsigned-int))

(cl:export 'aubio_parameter_set_steps)

(cffi:defcfun ("aubio_parameter_get_steps" aubio_parameter_get_steps) :unsigned-int
  (param :pointer))

(cl:export 'aubio_parameter_get_steps)

(cffi:defcfun ("aubio_parameter_set_min_value" aubio_parameter_set_min_value) :unsigned-int
  (param :pointer)
  (min_value :float))

(cl:export 'aubio_parameter_set_min_value)

(cffi:defcfun ("aubio_parameter_get_min_value" aubio_parameter_get_min_value) :float
  (param :pointer))

(cl:export 'aubio_parameter_get_min_value)

(cffi:defcfun ("aubio_parameter_set_max_value" aubio_parameter_set_max_value) :unsigned-int
  (param :pointer)
  (max_value :float))

(cl:export 'aubio_parameter_set_max_value)

(cffi:defcfun ("aubio_parameter_get_max_value" aubio_parameter_get_max_value) :float
  (param :pointer))

(cl:export 'aubio_parameter_get_max_value)

(cffi:defcfun ("del_aubio_parameter" del_aubio_parameter) :void
  (param :pointer))

(cl:export 'del_aubio_parameter)

(cffi:defcenum aubio_log_level
	:AUBIO_LOG_ERR
	:AUBIO_LOG_INF
	:AUBIO_LOG_MSG
	:AUBIO_LOG_DBG
	:AUBIO_LOG_WRN
	:AUBIO_LOG_LAST_LEVEL)

(cl:export 'aubio_log_level)

(cffi:defcfun ("aubio_log_set_function" aubio_log_set_function) :void
  (fun :pointer)
  (data :pointer))

(cl:export 'aubio_log_set_function)

(cffi:defcfun ("aubio_log_set_level_function" aubio_log_set_level_function) :pointer
  (level :int)
  (fun :pointer)
  (data :pointer))

(cl:export 'aubio_log_set_level_function)

(cffi:defcfun ("aubio_log_reset" aubio_log_reset) :void)

(cl:export 'aubio_log_reset)


