#lang at-exp racket

(require 2htdp/universe)
(require scribble/srcdoc)
(require (for-doc racket/base scribble/manual ))

(require ts-kata-util
         "../assets.rkt"
         2htdp/image ;You'll probably delete this.
         ;If skinning a language, require that here
	 )

(define racket-logo (bitmap "../assets/racket-logo.png"))