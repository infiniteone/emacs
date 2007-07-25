;;; ethiopic.el --- Quail package for inputting Ethiopic characters  -*-coding: iso-2022-7bit;-*-

;; Copyright (C) 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005,
;;   2006, 2007
;;   National Institute of Advanced Industrial Science and Technology (AIST)
;;   Registration Number H14PRO021

;; Keywords: multilingual, input method, ethiopic

;; This file is part of GNU Emacs.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;; Author: TAKAHASHI Naoto <ntakahas@etl.go.jp>

;;; Commentary:

;;; Code:

(require 'quail)
(require 'ethio-util)

;;
;; The package "ethiopic"
;;

(quail-define-package
 "ethiopic" "Ethiopic"
 '("$(3$Q#U!.(B "
   (ethio-prefer-ascii-space "_" "$(3$h(B")
   (ethio-prefer-ascii-punctuation "." "$(3$i(B"))
 t "  Quail package for Ethiopic (Tigrigna and Amharic)

When you are in Ethiopic language environment, the following special
keys are available.

C-F9 or `M-x ethio-toggle-space'
  Toggles space characters for keyboard input.  The current mode is
  indicated in mode-line, whether by `_' (ASCII space) or `$(3$h(B'
  (Ethiopic colon-like word separator).  Even in the `$(3$h(B' mode, an
  ASCII space is inserted if the point is preceded by `an Ethiopic
  punctuation followed by zero or more ASCII spaces'.

S-F5 or `M-x ethio-toggle-punctuation'
  Toggles ASCII punctuations and Ethiopic punctuations for keyboard input.
  The current mode is indicated by `.' (ASCII) or `$(3$i(B' (Ethiopic).

S-SPC or `M-x ethio-insert-ethio-space'
  Always insert an Ethiopic word separator `$(3$h(B'.  With a prefix number,
  insert that many word separators.

C-' or `M-x ethio-gemination'
  Compose the character before the point with the Ethiopic gemination mark.
  If the characater is already composed, decompose it and remove the
  gemination mark."

 ;; The following keys should work as defined in lisp/language/ethio-util,
 ;; even during the translation.
 '(([C-f9]  . quail-execute-non-quail-command)
   ([S-f5]  . quail-execute-non-quail-command)
   (" "     . quail-execute-non-quail-command)
   ([?\S- ] . quail-execute-non-quail-command)
   ([?\C-'] . quail-execute-non-quail-command))
 t t)

(quail-define-rules
 ("he" ?$(3!!(B)
 ("hu" ?$(3!"(B)
 ("hi" ?$(3!#(B)
 ("ha" ?$(3!$(B)
 ("hE" ?$(3!%(B)
 ("hee" ?$(3!%(B)
 ("h" ?$(3!&(B)
 ("ho" ?$(3!'(B)
 ("hW" ?$(3"N(B)
 ("hWa" ?$(3"N(B)
 ("hWe" ?$(3"K(B)
 ("hWu" ?$(3"P(B)
 ("hWi" ?$(3"M(B)
 ("hWE" ?$(3"O(B)
 ("hW'" ?$(3"P(B)

 ("le" ?$(3!)(B)
 ("lu" ?$(3!*(B)
 ("li" ?$(3!+(B)
 ("la" ?$(3!,(B)
 ("lE" ?$(3!-(B)
 ("lee" ?$(3!-(B)
 ("l" ?$(3!.(B)
 ("lo" ?$(3!/(B)
 ("lW" ?$(3!0(B)
 ("lWa" ?$(3!0(B)
 ("lWe" ["$(3!.%n(B"])
 ("lWu" ["$(3!.%r(B"])
 ("lWi" ["$(3!.%o(B"])
 ("lWE" ["$(3!.%q(B"])
 ("lW'" ["$(3!.%r(B"])

 ("Le" ?$(3!)(B)
 ("Lu" ?$(3!*(B)
 ("Li" ?$(3!+(B)
 ("La" ?$(3!,(B)
 ("LE" ?$(3!-(B)
 ("Lee" ?$(3!-(B)
 ("L" ?$(3!.(B)
 ("Lo" ?$(3!/(B)
 ("LW" ?$(3!0(B)
 ("LWa" ?$(3!0(B)
 ("LWe" ["$(3!.%n(B"])
 ("LWu" ["$(3!.%r(B"])
 ("LWi" ["$(3!.%o(B"])
 ("LWE" ["$(3!.%q(B"])
 ("LW'" ["$(3!.%r(B"])

 ("He" ?$(3!1(B)
 ("Hu" ?$(3!2(B)
 ("Hi" ?$(3!3(B)
 ("Ha" ?$(3!4(B)
 ("HE" ?$(3!5(B)
 ("Hee" ?$(3!5(B)
 ("H" ?$(3!6(B)
 ("Ho" ?$(3!7(B)
 ("HW" ?$(3!8(B)
 ("HWa" ?$(3!8(B)
 ("HWe" ["$(3!6%n(B"])
 ("HWu" ["$(3!6%r(B"])
 ("HWi" ["$(3!6%o(B"])
 ("HWE" ["$(3!6%q(B"])
 ("HW'" ["$(3!6%r(B"])

 ("me" ?$(3!9(B)
 ("mu" ?$(3!:(B)
 ("mi" ?$(3!;(B)
 ("ma" ?$(3!<(B)
 ("mE" ?$(3!=(B)
 ("mee" ?$(3!=(B)
 ("m" ?$(3!>(B)
 ("mo" ?$(3!?(B)
 ("mWe" ?$(3%1(B)
 ("mWu" ?$(3%a(B)
 ("mWi" ?$(3%A(B)
 ("mW" ?$(3!@(B)
 ("mWa" ?$(3!@(B)
 ("mWE" ?$(3%Q(B)
 ("mWee" ?$(3%Q(B)
 ("mW'" ?$(3%a(B)
 ("mY" ?$(3$_(B)
 ("mYa" ?$(3$_(B)

 ("Me" ?$(3!9(B)
 ("Mu" ?$(3!:(B)
 ("Mi" ?$(3!;(B)
 ("Ma" ?$(3!<(B)
 ("ME" ?$(3!=(B)
 ("Mee" ?$(3!=(B)
 ("M" ?$(3!>(B)
 ("Mo" ?$(3!?(B)
 ("MWe" ?$(3%1(B)
 ("MWu" ?$(3%a(B)
 ("MWi" ?$(3%A(B)
 ("MW" ?$(3!@(B)
 ("MWa" ?$(3!@(B)
 ("MWE" ?$(3%Q(B)
 ("MWee" ?$(3%Q(B)
 ("MW'" ?$(3%a(B)
 ("MY" ?$(3$_(B)
 ("MYa" ?$(3$_(B)

 ("`se" ?$(3!A(B)
 ("`su" ?$(3!B(B)
 ("`si" ?$(3!C(B)
 ("`sa" ?$(3!D(B)
 ("`sE" ?$(3!E(B)
 ("`see" ?$(3!E(B)
 ("`s" ?$(3!F(B)
 ("`so" ?$(3!G(B)
 ("`sW" ?$(3!H(B)
 ("`sWa" ?$(3!H(B)
 ("`sWe" ["$(3!F%n(B"])
 ("`sWu" ["$(3!F%r(B"])
 ("`sWi" ["$(3!F%o(B"])
 ("`sWE" ["$(3!F%q(B"])
 ("`sWee" ["$(3!F%q(B"])
 ("`sW'" ["$(3!F%r(B"])

 ("s2e" ?$(3!A(B)
 ("s2u" ?$(3!B(B)
 ("s2i" ?$(3!C(B)
 ("s2a" ?$(3!D(B)
 ("s2E" ?$(3!E(B)
 ("s2ee" ?$(3!E(B)
 ("s2" ?$(3!F(B)
 ("s2o" ?$(3!G(B)
 ("s2W" ?$(3!H(B)
 ("s2Wa" ?$(3!H(B)
 ("s2We" ["$(3!F%n(B"])
 ("s2Wu" ["$(3!F%r(B"])
 ("s2Wi" ["$(3!F%o(B"])
 ("s2WE" ["$(3!F%q(B"])
 ("s2Wee" ["$(3!F%q(B"])
 ("s2W'" ["$(3!F%r(B"])

 ("sse" ?$(3!A(B)
 ("ssu" ?$(3!B(B)
 ("ssi" ?$(3!C(B)
 ("ssa" ?$(3!D(B)
 ("ssE" ?$(3!E(B)
 ("ssee" ?$(3!E(B)
 ("ss" ?$(3!F(B)
 ("sso" ?$(3!G(B)
 ("ssW" ?$(3!H(B)
 ("ssWa" ?$(3!H(B)
 ("ssWe" ["$(3!F%n(B"])
 ("ssWu" ["$(3!F%r(B"])
 ("ssWi" ["$(3!F%o(B"])
 ("ssWE" ["$(3!F%q(B"])
 ("ssWee" ["$(3!F%q(B"])
 ("ssW'" ["$(3!F%r(B"])

 ("re" ?$(3!I(B)
 ("ru" ?$(3!J(B)
 ("ri" ?$(3!K(B)
 ("ra" ?$(3!L(B)
 ("rE" ?$(3!M(B)
 ("ree" ?$(3!M(B)
 ("r" ?$(3!N(B)
 ("ro" ?$(3!O(B)
 ("rW" ?$(3!P(B)
 ("rWa" ?$(3!P(B)
 ("rY" ?$(3$`(B)
 ("rYa" ?$(3$`(B)
 ("rWe" ["$(3!N%n(B"])
 ("rWu" ["$(3!N%r(B"])
 ("rWi" ["$(3!N%o(B"])
 ("rWE" ["$(3!N%q(B"])
 ("rWee" ["$(3!N%q(B"])
 ("rW'" ["$(3!N%r(B"])

 ("Re" ?$(3!I(B)
 ("Ru" ?$(3!J(B)
 ("Ri" ?$(3!K(B)
 ("Ra" ?$(3!L(B)
 ("RE" ?$(3!M(B)
 ("Ree" ?$(3!M(B)
 ("R" ?$(3!N(B)
 ("Ro" ?$(3!O(B)
 ("RW" ?$(3!P(B)
 ("RWa" ?$(3!P(B)
 ("RYa" ?$(3$`(B)
 ("RWe" ["$(3!N%n(B"])
 ("RWu" ["$(3!N%r(B"])
 ("RWi" ["$(3!N%o(B"])
 ("RWE" ["$(3!N%q(B"])
 ("RWee" ["$(3!N%q(B"])
 ("RW'" ["$(3!N%r(B"])

 ("se" ?$(3!Q(B)
 ("su" ?$(3!R(B)
 ("si" ?$(3!S(B)
 ("sa" ?$(3!T(B)
 ("sE" ?$(3!U(B)
 ("see" ?$(3!U(B)
 ("s" ?$(3!V(B)
 ("so" ?$(3!W(B)
 ("sW" ?$(3!X(B)
 ("sWa" ?$(3!X(B)
 ("sWe" ["$(3!V%n(B"])
 ("sWu" ["$(3!V%r(B"])
 ("sWi" ["$(3!V%o(B"])
 ("sWE" ["$(3!V%q(B"])
 ("sWee" ["$(3!V%q(B"])
 ("sW'" ["$(3!V%r(B"])

 ("xe" ?$(3!Y(B)
 ("xu" ?$(3!Z(B)
 ("xi" ?$(3![(B)
 ("xa" ?$(3!\(B)
 ("xE" ?$(3!](B)
 ("xee" ?$(3!](B)
 ("x" ?$(3!^(B)
 ("xo" ?$(3!_(B)
 ("xW" ?$(3!`(B)
 ("xWa" ?$(3!`(B)
 ("xWe" ["$(3!^%n(B"])
 ("xWu" ["$(3!^%r(B"])
 ("xWi" ["$(3!^%o(B"])
 ("xWE" ["$(3!^%q(B"])
 ("xWee" ["$(3!^%q(B"])
 ("xW'" ["$(3!^%r(B"])

 ("qe" ?$(3!a(B)
 ("qu" ?$(3!b(B)
 ("qi" ?$(3!c(B)
 ("qa" ?$(3!d(B)
 ("qE" ?$(3!e(B)
 ("qee" ?$(3!e(B)
 ("q" ?$(3!f(B)
 ("qo" ?$(3!g(B)
 ("qWe" ?$(3!i(B)
 ("qWu" ?$(3!n(B)
 ("qWi" ?$(3!k(B)
 ("qW" ?$(3!l(B)
 ("qWa" ?$(3!l(B)
 ("qWE" ?$(3!m(B)
 ("qWee" ?$(3!m(B)
 ("qW'" ?$(3!n(B)

 ("`qe" ?$(3%)(B)
 ("`qu" ?$(3%*(B)
 ("`qi" ?$(3%+(B)
 ("`qa" ?$(3%,(B)
 ("`qE" ?$(3%-(B)
 ("`qee" ?$(3%-(B)
 ("`q" ?$(3%.(B)
 ("`qo" ?$(3%/(B)

 ("q2e" ?$(3%)(B)
 ("q2u" ?$(3%*(B)
 ("q2i" ?$(3%+(B)
 ("q2a" ?$(3%,(B)
 ("q2E" ?$(3%-(B)
 ("q2ee" ?$(3%-(B)
 ("q2" ?$(3%.(B)
 ("q2o" ?$(3%/(B)

 ("qqe" ?$(3%)(B)
 ("qqu" ?$(3%*(B)
 ("qqi" ?$(3%+(B)
 ("qqa" ?$(3%,(B)
 ("qqE" ?$(3%-(B)
 ("qqee" ?$(3%-(B)
 ("qq" ?$(3%.(B)
 ("qqo" ?$(3%/(B)

 ("Qe" ?$(3!q(B)
 ("Qu" ?$(3!r(B)
 ("Qi" ?$(3!s(B)
 ("Qa" ?$(3!t(B)
 ("QE" ?$(3!u(B)
 ("Qee" ?$(3!u(B)
 ("Q" ?$(3!v(B)
 ("Qo" ?$(3!w(B)
 ("QWe" ?$(3!y(B)
 ("QWu" ?$(3!~(B)
 ("QWi" ?$(3!{(B)
 ("QW" ?$(3!|(B)
 ("QWa" ?$(3!|(B)
 ("QWE" ?$(3!}(B)
 ("QWee" ?$(3!}(B)
 ("QW'" ?$(3!~(B)

 ("be" ?$(3"#(B)
 ("bu" ?$(3"$(B)
 ("bi" ?$(3"%(B)
 ("ba" ?$(3"&(B)
 ("bE" ?$(3"'(B)
 ("bee" ?$(3"'(B)
 ("b" ?$(3"((B)
 ("bo" ?$(3")(B)
 ("bWe" ?$(3%2(B)
 ("bWu" ?$(3%b(B)
 ("bWi" ?$(3%B(B)
 ("bW" ?$(3"*(B)
 ("bWa" ?$(3"*(B)
 ("bWE" ?$(3%R(B)
 ("bWee" ?$(3%R(B)
 ("bW'" ?$(3%b(B)

 ("Be" ?$(3"#(B)
 ("Bu" ?$(3"$(B)
 ("Bi" ?$(3"%(B)
 ("Ba" ?$(3"&(B)
 ("BE" ?$(3"'(B)
 ("Bee" ?$(3"'(B)
 ("B" ?$(3"((B)
 ("Bo" ?$(3")(B)
 ("BWe" ?$(3%2(B)
 ("BWu" ?$(3%b(B)
 ("BWi" ?$(3%B(B)
 ("BW" ?$(3"*(B)
 ("BWa" ?$(3"*(B)
 ("BWE" ?$(3%R(B)
 ("BWee" ?$(3%R(B)
 ("BW'" ?$(3%b(B)

 ("ve" ?$(3"+(B)
 ("vu" ?$(3",(B)
 ("vi" ?$(3"-(B)
 ("va" ?$(3".(B)
 ("vE" ?$(3"/(B)
 ("vee" ?$(3"/(B)
 ("v" ?$(3"0(B)
 ("vo" ?$(3"1(B)
 ("vW" ?$(3"2(B)
 ("vWa" ?$(3"2(B)
 ("vWe" ["$(3"0%n(B"])
 ("vWu" ["$(3"0%r(B"])
 ("vWi" ["$(3"0%o(B"])
 ("vWE" ["$(3"0%q(B"])
 ("vWee" ["$(3"0%q(B"])
 ("vW'" ["$(3"0%r(B"])

 ("Ve" ?$(3"+(B)
 ("Vu" ?$(3",(B)
 ("Vi" ?$(3"-(B)
 ("Va" ?$(3".(B)
 ("VE" ?$(3"/(B)
 ("Vee" ?$(3"/(B)
 ("V" ?$(3"0(B)
 ("Vo" ?$(3"1(B)
 ("VW" ?$(3"2(B)
 ("VWa" ?$(3"2(B)
 ("VWe" ["$(3"0%n(B"])
 ("VWu" ["$(3"0%r(B"])
 ("VWi" ["$(3"0%o(B"])
 ("VWE" ["$(3"0%q(B"])
 ("VWee" ["$(3"0%q(B"])
 ("VW'" ["$(3"0%r(B"])

 ("te" ?$(3"3(B)
 ("tu" ?$(3"4(B)
 ("ti" ?$(3"5(B)
 ("ta" ?$(3"6(B)
 ("tE" ?$(3"7(B)
 ("tee" ?$(3"7(B)
 ("t" ?$(3"8(B)
 ("to" ?$(3"9(B)
 ("tW" ?$(3":(B)
 ("tWa" ?$(3":(B)
 ("tWe" ["$(3"8%n(B"])
 ("tWu" ["$(3"8%r(B"])
 ("tWi" ["$(3"8%o(B"])
 ("tWE" ["$(3"8%q(B"])
 ("tWee" ["$(3"8%q(B"])
 ("tW'" ["$(3"8%r(B"])

 ("ce" ?$(3";(B)
 ("cu" ?$(3"<(B)
 ("ci" ?$(3"=(B)
 ("ca" ?$(3">(B)
 ("cE" ?$(3"?(B)
 ("cee" ?$(3"?(B)
 ("c" ?$(3"@(B)
 ("co" ?$(3"A(B)
 ("cW" ?$(3"B(B)
 ("cWa" ?$(3"B(B)
 ("cWe" ["$(3"@%n(B"])
 ("cWu" ["$(3"@%r(B"])
 ("cWi" ["$(3"@%o(B"])
 ("cWE" ["$(3"@%q(B"])
 ("cWee" ["$(3"@%q(B"])
 ("cW'" ["$(3"@%r(B"])

 ("`he" ?$(3"C(B)
 ("`hu" ?$(3"D(B)
 ("`hi" ?$(3"E(B)
 ("`ha" ?$(3"F(B)
 ("`hE" ?$(3"G(B)
 ("`hee" ?$(3"G(B)
 ("`h" ?$(3"H(B)
 ("`ho" ?$(3"I(B)
 ("`hWe" ?$(3"K(B)
 ("`hWu" ?$(3"P(B)
 ("`hWi" ?$(3"M(B)
 ("`hW" ?$(3"N(B)
 ("`hWa" ?$(3"N(B)
 ("`hWE" ?$(3"O(B)
 ("`hWee" ?$(3"O(B)
 ("`hW'" ?$(3"P(B)

 ("h2e" ?$(3"C(B)
 ("h2u" ?$(3"D(B)
 ("h2i" ?$(3"E(B)
 ("h2a" ?$(3"F(B)
 ("h2E" ?$(3"G(B)
 ("h2ee" ?$(3"G(B)
 ("h2" ?$(3"H(B)
 ("h2o" ?$(3"I(B)
 ("h2We" ?$(3"K(B)
 ("h2Wu" ?$(3"P(B)
 ("h2Wi" ?$(3"M(B)
 ("h2W" ?$(3"N(B)
 ("h2Wa" ?$(3"N(B)
 ("h2WE" ?$(3"O(B)
 ("h2Wee" ?$(3"O(B)
 ("h2W'" ?$(3"P(B)

 ("hhe" ?$(3"C(B)
 ("hhu" ?$(3"D(B)
 ("hhi" ?$(3"E(B)
 ("hha" ?$(3"F(B)
 ("hhE" ?$(3"G(B)
 ("hhee" ?$(3"G(B)
 ("hh" ?$(3"H(B)
 ("hho" ?$(3"I(B)
 ("hhWe" ?$(3"K(B)
 ("hhWu" ?$(3"P(B)
 ("hhWi" ?$(3"M(B)
 ("hhW" ?$(3"N(B)
 ("hhWa" ?$(3"N(B)
 ("hhWE" ?$(3"O(B)
 ("hhWee" ?$(3"O(B)
 ("hhW'" ?$(3"P(B)

 ("ne" ?$(3"S(B)
 ("nu" ?$(3"T(B)
 ("ni" ?$(3"U(B)
 ("na" ?$(3"V(B)
 ("nE" ?$(3"W(B)
 ("nee" ?$(3"W(B)
 ("n" ?$(3"X(B)
 ("no" ?$(3"Y(B)
 ("nW" ?$(3"Z(B)
 ("nWa" ?$(3"Z(B)
 ("nWe" ["$(3"X%n(B"])
 ("nWu" ["$(3"X%r(B"])
 ("nWi" ["$(3"X%o(B"])
 ("nWE" ["$(3"X%q(B"])
 ("nWee" ["$(3"X%q(B"])
 ("nW'" ["$(3"X%r(B"])

 ("Ne" ?$(3"[(B)
 ("Nu" ?$(3"\(B)
 ("Ni" ?$(3"](B)
 ("Na" ?$(3"^(B)
 ("NE" ?$(3"_(B)
 ("Nee" ?$(3"_(B)
 ("N" ?$(3"`(B)
 ("No" ?$(3"a(B)
 ("NW" ?$(3"b(B)
 ("NWa" ?$(3"b(B)
 ("NWe" ["$(3"`%n(B"])
 ("NWu" ["$(3"`%r(B"])
 ("NWi" ["$(3"`%o(B"])
 ("NWE" ["$(3"`%q(B"])
 ("NWee" ["$(3"`%q(B"])
 ("NW'" ["$(3"`%r(B"])

 ; ("e" ?$(3"c(B) ; old style
 ("u" ?$(3"d(B)
 ("U" ?$(3"d(B)
 ("i" ?$(3"e(B)
 ("a" ?$(3"f(B)
 ("A" ?$(3"f(B)
 ("E" ?$(3"g(B)
 ; ("ee" ?$(3"g(B) ; Alef-E is rare vs Aynu-I, so ee = Aynu-I
 ("I" ?$(3"h(B)
 ("e" ?$(3"h(B)    ; This is the premise to "new style" for vowels

 ("o" ?$(3"i(B)
 ("O" ?$(3"i(B)
 ("ea" ?$(3"j(B)

 ("ke" ?$(3"k(B)
 ("ku" ?$(3"l(B)
 ("ki" ?$(3"m(B)
 ("ka" ?$(3"n(B)
 ("kE" ?$(3"o(B)
 ("kee" ?$(3"o(B)
 ("k" ?$(3"p(B)
 ("ko" ?$(3"q(B)
 ("kWe" ?$(3"s(B)
 ("kWu" ?$(3"x(B)
 ("kWi" ?$(3"u(B)
 ("kW" ?$(3"v(B)
 ("kWa" ?$(3"v(B)
 ("kWE" ?$(3"w(B)
 ("kWee" ?$(3"w(B)
 ("kW'" ?$(3"x(B)

 ("`ke" ?$(3%9(B)
 ("`ku" ?$(3%:(B)
 ("`ki" ?$(3%;(B)
 ("`ka" ?$(3%<(B)
 ("`kE" ?$(3%=(B)
 ("`kee" ?$(3%=(B)
 ("`k" ?$(3%>(B)
 ("`ko" ?$(3%?(B)

 ("k2e" ?$(3%9(B)
 ("k2u" ?$(3%:(B)
 ("k2i" ?$(3%;(B)
 ("k2a" ?$(3%<(B)
 ("k2E" ?$(3%=(B)
 ("k2ee" ?$(3%=(B)
 ("k2" ?$(3%>(B)
 ("k2o" ?$(3%?(B)

 ("kke" ?$(3%9(B)
 ("kku" ?$(3%:(B)
 ("kki" ?$(3%;(B)
 ("kka" ?$(3%<(B)
 ("kkE" ?$(3%=(B)
 ("kkee" ?$(3%=(B)
 ("kk" ?$(3%>(B)
 ("kko" ?$(3%?(B)

 ("Ke" ?$(3"{(B)
 ("Ku" ?$(3"|(B)
 ("Ki" ?$(3"}(B)
 ("Ka" ?$(3"~(B)
 ("KE" ?$(3#!(B)
 ("Kee" ?$(3#!(B)
 ("K" ?$(3#"(B)
 ("Ko" ?$(3##(B)
 ("KWe" ?$(3#%(B)
 ("KWu" ?$(3#*(B)
 ("KWi" ?$(3#'(B)
 ("KW" ?$(3#((B)
 ("KWa" ?$(3#((B)
 ("KWE" ?$(3#)(B)
 ("KWee" ?$(3#)(B)
 ("KW'" ?$(3#*(B)

 ("Xe" ?$(3%I(B)
 ("Xu" ?$(3%J(B)
 ("Xi" ?$(3%K(B)
 ("Xa" ?$(3%L(B)
 ("XE" ?$(3%M(B)
 ("Xee" ?$(3%M(B)
 ("X" ?$(3%N(B)
 ("Xo" ?$(3%O(B)

 ("we" ?$(3#-(B)
 ("wu" ?$(3#.(B)
 ("wi" ?$(3#/(B)
 ("wa" ?$(3#0(B)
 ("wE" ?$(3#1(B)
 ("wee" ?$(3#1(B)
 ("w" ?$(3#2(B)
 ("wo" ?$(3#3(B)

 ("`e" ?$(3#5(B)
 ("`u" ?$(3#6(B)
 ("`U" ?$(3#6(B)
 ("`i" ?$(3#7(B)
 ("`a" ?$(3#8(B)
 ("`A" ?$(3#8(B)
 ("`E" ?$(3#9(B)
 ("`ee" ?$(3#9(B)
 ("`I" ?$(3#:(B)
 ("`o" ?$(3#;(B)
 ("`O" ?$(3#;(B)

 ("e2" ?$(3#5(B)
 ("u2" ?$(3#6(B)
 ("U2" ?$(3#6(B)
 ("i2" ?$(3#7(B)
 ("a2" ?$(3#8(B)
 ("A2" ?$(3#8(B)
 ("E2" ?$(3#9(B)
 ("ee2" ?$(3#9(B)
 ("I2" ?$(3#:(B)
 ("o2" ?$(3#;(B)
 ("O2" ?$(3#;(B)

 ; ("ee" ?$(3#5(B) ; old style
 ("ae" ?$(3#5(B)   ; new style
 ("aaa" ?$(3#5(B)  ; new style
 ("uu" ?$(3#6(B)
 ("UU" ?$(3#6(B)
 ("ii" ?$(3#7(B)
 ("aa" ?$(3#8(B)
 ("AA" ?$(3#8(B)
 ("EE" ?$(3#9(B)
 ("II" ?$(3#:(B)
 ("ee" ?$(3#:(B)   ; new style
 ("oo" ?$(3#;(B)
 ("OO" ?$(3#;(B)

 ("ze" ?$(3#=(B)
 ("zu" ?$(3#>(B)
 ("zi" ?$(3#?(B)
 ("za" ?$(3#@(B)
 ("zE" ?$(3#A(B)
 ("zee" ?$(3#A(B)
 ("z" ?$(3#B(B)
 ("zo" ?$(3#C(B)
 ("zW" ?$(3#D(B)
 ("zWa" ?$(3#D(B)
 ("zWe" ["$(3#B%n(B"])
 ("zWu" ["$(3#B%r(B"])
 ("zWi" ["$(3#B%o(B"])
 ("zWE" ["$(3#B%q(B"])
 ("zWee" ["$(3#B%q(B"])
 ("zW'" ["$(3#B%r(B"])

 ("Ze" ?$(3#E(B)
 ("Zu" ?$(3#F(B)
 ("Zi" ?$(3#G(B)
 ("Za" ?$(3#H(B)
 ("ZE" ?$(3#I(B)
 ("Zee" ?$(3#I(B)
 ("Z" ?$(3#J(B)
 ("Zo" ?$(3#K(B)
 ("ZW" ?$(3#L(B)
 ("ZWa" ?$(3#L(B)
 ("ZWe" ["$(3#J%n(B"])
 ("ZWu" ["$(3#J%r(B"])
 ("ZWi" ["$(3#J%o(B"])
 ("ZWE" ["$(3#J%q(B"])
 ("ZWee" ["$(3#J%q(B"])
 ("ZW'" ["$(3#J%r(B"])

 ("ye" ?$(3#M(B)
 ("yu" ?$(3#N(B)
 ("yi" ?$(3#O(B)
 ("ya" ?$(3#P(B)
 ("yE" ?$(3#Q(B)
 ("yee" ?$(3#Q(B)
 ("y" ?$(3#R(B)
 ("yo" ?$(3#S(B)
 ("yW" ?$(3#T(B)
 ("yWa" ?$(3#T(B)
 ("yWe" ["$(3#R%n(B"])
 ("yWu" ["$(3#R%r(B"])
 ("yWi" ["$(3#R%o(B"])
 ("yWE" ["$(3#R%q(B"])
 ("yWee" ["$(3#R%q(B"])
 ("yW'" ["$(3#R%r(B"])

 ("Ye" ?$(3#M(B)
 ("Yu" ?$(3#N(B)
 ("Yi" ?$(3#O(B)
 ("Ya" ?$(3#P(B)
 ("YE" ?$(3#Q(B)
 ("Yee" ?$(3#Q(B)
 ("Y" ?$(3#R(B)
 ("Yo" ?$(3#S(B)
 ("YW" ?$(3#T(B)
 ("YWa" ?$(3#T(B)
 ("YWe" ["$(3#R%n(B"])
 ("YWu" ["$(3#R%r(B"])
 ("YWi" ["$(3#R%o(B"])
 ("YWE" ["$(3#R%q(B"])
 ("YWee" ["$(3#R%q(B"])
 ("YW'" ["$(3#R%r(B"])

 ("de" ?$(3#U(B)
 ("du" ?$(3#V(B)
 ("di" ?$(3#W(B)
 ("da" ?$(3#X(B)
 ("dE" ?$(3#Y(B)
 ("dee" ?$(3#Y(B)
 ("d" ?$(3#Z(B)
 ("do" ?$(3#[(B)
 ("dW" ?$(3#\(B)
 ("dWa" ?$(3#\(B)
 ("dWe" ["$(3#Z%n(B"])
 ("dWu" ["$(3#Z%r(B"])
 ("dWi" ["$(3#Z%o(B"])
 ("dWE" ["$(3#Z%q(B"])
 ("dWee" ["$(3#Z%q(B"])
 ("dW'" ["$(3#Z%r(B"])

 ("De" ?$(3#](B)
 ("Du" ?$(3#^(B)
 ("Di" ?$(3#_(B)
 ("Da" ?$(3#`(B)
 ("DE" ?$(3#a(B)
 ("Dee" ?$(3#a(B)
 ("D" ?$(3#b(B)
 ("Do" ?$(3#c(B)
 ("DW" ?$(3#d(B)
 ("DWa" ?$(3#d(B)
 ("DWe" ["$(3#b%n(B"])
 ("DWu" ["$(3#b%r(B"])
 ("DWi" ["$(3#b%o(B"])
 ("DWE" ["$(3#b%q(B"])
 ("DWee" ["$(3#b%q(B"])
 ("DW'" ["$(3#b%r(B"])

 ("je" ?$(3#e(B)
 ("ju" ?$(3#f(B)
 ("ji" ?$(3#g(B)
 ("ja" ?$(3#h(B)
 ("jE" ?$(3#i(B)
 ("jee" ?$(3#i(B)
 ("j" ?$(3#j(B)
 ("jo" ?$(3#k(B)
 ("jW" ?$(3#l(B)
 ("jWa" ?$(3#l(B)
 ("jWe" ["$(3#j%n(B"])
 ("jWu" ["$(3#j%r(B"])
 ("jWi" ["$(3#j%o(B"])
 ("jWE" ["$(3#j%q(B"])
 ("jWee" ["$(3#j%q(B"])
 ("jW'" ["$(3#j%r(B"])

 ("Je" ?$(3#e(B)
 ("Ju" ?$(3#f(B)
 ("Ji" ?$(3#g(B)
 ("Ja" ?$(3#h(B)
 ("JE" ?$(3#i(B)
 ("Jee" ?$(3#i(B)
 ("J" ?$(3#j(B)
 ("Jo" ?$(3#k(B)
 ("JW" ?$(3#l(B)
 ("JWa" ?$(3#l(B)
 ("JWe" ["$(3#j%n(B"])
 ("JWu" ["$(3#j%r(B"])
 ("JWi" ["$(3#j%o(B"])
 ("JWE" ["$(3#j%q(B"])
 ("JWee" ["$(3#j%q(B"])
 ("JW'" ["$(3#j%r(B"])

 ("ge" ?$(3#m(B)
 ("gu" ?$(3#n(B)
 ("gi" ?$(3#o(B)
 ("ga" ?$(3#p(B)
 ("gE" ?$(3#q(B)
 ("gee" ?$(3#q(B)
 ("g" ?$(3#r(B)
 ("go" ?$(3#s(B)
 ("gWe" ?$(3#u(B)
 ("gWu" ?$(3#z(B)
 ("gWi" ?$(3#w(B)
 ("gW" ?$(3#x(B)
 ("gWa" ?$(3#x(B)
 ("gWE" ?$(3#y(B)
 ("gWee" ?$(3#y(B)
 ("gW'" ?$(3#z(B)

 ("`ge" ?$(3%Y(B)
 ("`gu" ?$(3%Z(B)
 ("`gi" ?$(3%[(B)
 ("`ga" ?$(3%\(B)
 ("`gE" ?$(3%](B)
 ("`gee" ?$(3%](B)
 ("`g" ?$(3%^(B)
 ("`go" ?$(3%_(B)

 ("g2e" ?$(3%Y(B)
 ("g2u" ?$(3%Z(B)
 ("g2i" ?$(3%[(B)
 ("g2a" ?$(3%\(B)
 ("g2E" ?$(3%](B)
 ("g2ee" ?$(3%](B)
 ("g2" ?$(3%^(B)
 ("g2o" ?$(3%_(B)

 ("gge" ?$(3%Y(B)
 ("ggu" ?$(3%Z(B)
 ("ggi" ?$(3%[(B)
 ("gga" ?$(3%\(B)
 ("ggE" ?$(3%](B)
 ("ggee" ?$(3%](B)
 ("gg" ?$(3%^(B)
 ("ggo" ?$(3%_(B)

 ("Ge" ?$(3#}(B)
 ("Gu" ?$(3#~(B)
 ("Gi" ?$(3$!(B)
 ("Ga" ?$(3$"(B)
 ("GE" ?$(3$#(B)
 ("Gee" ?$(3$#(B)
 ("G" ?$(3$$(B)
 ("Go" ?$(3$%(B)
 ("GWe" ?$(3%3(B)
 ("GWu" ?$(3%c(B)
 ("GWi" ?$(3%C(B)
 ("GW" ?$(3$&(B)
 ("GWa" ?$(3$&(B)
 ("GWE" ?$(3%S(B)
 ("GWee" ?$(3%S(B)
 ("GW'" ?$(3%c(B)

 ("Te" ?$(3$'(B)
 ("Tu" ?$(3$((B)
 ("Ti" ?$(3$)(B)
 ("Ta" ?$(3$*(B)
 ("TE" ?$(3$+(B)
 ("Tee" ?$(3$+(B)
 ("T" ?$(3$,(B)
 ("To" ?$(3$-(B)
 ("TW" ?$(3$.(B)
 ("TWa" ?$(3$.(B)
 ("TWe" ["$(3$,%n(B"])
 ("TWu" ["$(3$,%r(B"])
 ("TWi" ["$(3$,%o(B"])
 ("TWE" ["$(3$,%q(B"])
 ("TWee" ["$(3$,%q(B"])
 ("TW'" ["$(3$,%r(B"])

 ("Ce" ?$(3$/(B)
 ("Cu" ?$(3$0(B)
 ("Ci" ?$(3$1(B)
 ("Ca" ?$(3$2(B)
 ("CE" ?$(3$3(B)
 ("Cee" ?$(3$3(B)
 ("C" ?$(3$4(B)
 ("Co" ?$(3$5(B)
 ("CW" ?$(3$6(B)
 ("CWa" ?$(3$6(B)
 ("CWe" ["$(3$4%n(B"])
 ("CWu" ["$(3$4%r(B"])
 ("CWi" ["$(3$4%o(B"])
 ("CWE" ["$(3$4%q(B"])
 ("CWee" ["$(3$4%q(B"])
 ("CW'" ["$(3$4%r(B"])

 ("Pe" ?$(3$7(B)
 ("Pu" ?$(3$8(B)
 ("Pi" ?$(3$9(B)
 ("Pa" ?$(3$:(B)
 ("PE" ?$(3$;(B)
 ("Pee" ?$(3$;(B)
 ("P" ?$(3$<(B)
 ("Po" ?$(3$=(B)
 ("PW" ?$(3$>(B)
 ("PWa" ?$(3$>(B)
 ("PWe" ["$(3$<%n(B"])
 ("PWu" ["$(3$<%r(B"])
 ("PWi" ["$(3$<%o(B"])
 ("PWE" ["$(3$<%q(B"])
 ("PWee" ["$(3$<%q(B"])
 ("PW'" ["$(3$<%r(B"])

 ("Se" ?$(3$?(B)
 ("Su" ?$(3$@(B)
 ("Si" ?$(3$A(B)
 ("Sa" ?$(3$B(B)
 ("SE" ?$(3$C(B)
 ("See" ?$(3$C(B)
 ("S" ?$(3$D(B)
 ("So" ?$(3$E(B)
 ("SW" ?$(3$F(B)
 ("SWa" ?$(3$F(B)
 ("SWe" ["$(3$D%n(B"])
 ("SWu" ["$(3$D%r(B"])
 ("SWi" ["$(3$D%o(B"])
 ("SWE" ["$(3$D%q(B"])
 ("SWee" ["$(3$D%q(B"])
 ("SW'" ["$(3$D%r(B"])

 ("`Se" ?$(3$G(B)
 ("`Su" ?$(3$H(B)
 ("`Si" ?$(3$I(B)
 ("`Sa" ?$(3$J(B)
 ("`SE" ?$(3$K(B)
 ("`See" ?$(3$K(B)
 ("`S" ?$(3$L(B)
 ("`So" ?$(3$M(B)
 ("`SW" ?$(3$F(B)
 ("`SWa" ?$(3$F(B)
 ("`SWe" ["$(3$L%n(B"])
 ("`SWu" ["$(3$L%r(B"])
 ("`SWi" ["$(3$L%o(B"])
 ("`SWE" ["$(3$L%q(B"])
 ("`SWee" ["$(3$L%q(B"])
 ("`SW'" ["$(3$L%r(B"])

 ("S2e" ?$(3$G(B)
 ("S2u" ?$(3$H(B)
 ("S2i" ?$(3$I(B)
 ("S2a" ?$(3$J(B)
 ("S2E" ?$(3$K(B)
 ("S2ee" ?$(3$K(B)
 ("S2" ?$(3$L(B)
 ("S2o" ?$(3$M(B)
 ("S2W" ?$(3$F(B)
 ("S2Wa" ?$(3$F(B)
 ("S2We" ["$(3$L%n(B"])
 ("S2Wu" ["$(3$L%r(B"])
 ("S2Wi" ["$(3$L%o(B"])
 ("S2WE" ["$(3$L%q(B"])
 ("S2Wee" ["$(3$L%q(B"])
 ("S2W'" ["$(3$L%r(B"])

 ("SSe" ?$(3$G(B)
 ("SSu" ?$(3$H(B)
 ("SSi" ?$(3$I(B)
 ("SSa" ?$(3$J(B)
 ("SSE" ?$(3$K(B)
 ("SSee" ?$(3$K(B)
 ("SS" ?$(3$L(B)
 ("SSo" ?$(3$M(B)
 ("SSW" ?$(3$F(B)
 ("SSWa" ?$(3$F(B)
 ("SSWe" ["$(3$L%n(B"])
 ("SSWu" ["$(3$L%r(B"])
 ("SSWi" ["$(3$L%o(B"])
 ("SSWE" ["$(3$L%q(B"])
 ("SSWee" ["$(3$L%q(B"])
 ("SW'" ["$(3$L%r(B"])

 ("fe" ?$(3$O(B)
 ("fu" ?$(3$P(B)
 ("fi" ?$(3$Q(B)
 ("fa" ?$(3$R(B)
 ("fE" ?$(3$S(B)
 ("fee" ?$(3$S(B)
 ("f" ?$(3$T(B)
 ("fo" ?$(3$U(B)
 ("fWe" ?$(3%4(B)
 ("fWu" ?$(3%d(B)
 ("fWi" ?$(3%D(B)
 ("fW" ?$(3$V(B)
 ("fWa" ?$(3$V(B)
 ("fWE" ?$(3%T(B)
 ("fWee" ?$(3%T(B)
 ("fW'" ?$(3%d(B)
 ("fY" ?$(3$a(B)
 ("fYa" ?$(3$a(B)

 ("Fe" ?$(3$O(B)
 ("Fu" ?$(3$P(B)
 ("Fi" ?$(3$Q(B)
 ("Fa" ?$(3$R(B)
 ("FE" ?$(3$S(B)
 ("Fee" ?$(3$S(B)
 ("F" ?$(3$T(B)
 ("Fo" ?$(3$U(B)
 ("FWe" ?$(3%4(B)
 ("FWu" ?$(3%d(B)
 ("FWi" ?$(3%D(B)
 ("FW" ?$(3$V(B)
 ("FWa" ?$(3$V(B)
 ("FWE" ?$(3%T(B)
 ("FWee" ?$(3%T(B)
 ("FW'" ?$(3%d(B)
 ("FY" ?$(3$a(B)
 ("FYa" ?$(3$a(B)

 ("pe" ?$(3$W(B)
 ("pu" ?$(3$X(B)
 ("pi" ?$(3$Y(B)
 ("pa" ?$(3$Z(B)
 ("pE" ?$(3$[(B)
 ("pee" ?$(3$[(B)
 ("p" ?$(3$\(B)
 ("po" ?$(3$](B)
 ("pWe" ?$(3%5(B)
 ("pWu" ?$(3%e(B)
 ("pWi" ?$(3%E(B)
 ("pW" ?$(3$^(B)
 ("pWa" ?$(3$^(B)
 ("pWE" ?$(3%U(B)
 ("pWee" ?$(3%U(B)
 ("pW'" ?$(3%e(B)

 ("'" [""])
 ("''" ?')
 (":" ?$(3$h(B)
 ("::" ?$(3$i(B)
 (":::" ?:)
 ("." ?$(3$i(B)
 (".." ?$(3%u(B)
 ("..." ?.)
 ("," ?$(3$j(B)
 (",," ?,)
 (";" ?$(3$k(B)
 (";;" ?\;)
 ("-:" ?$(3$l(B)
 (":-" ?$(3$m(B)
 ("*" ?*)
 ("**" ?$(3$o(B)
 (":|:" ?$(3$o(B)
 ("?" ?$(3%x(B)
 ("??" ?$(3$n(B)
 ("`?" ?$(3$n(B)
 ("???" ??)
 ("<<" ?$(3%v(B)
 (">>" ?$(3%w(B)
 ("`!" ?$(3%t(B)
 ("wWe" ?$(3%n(B)
 ("wWu" ?$(3%r(B)
 ("wWi" ?$(3%o(B)
 ("wW" ?$(3%p(B)
 ("wWa" ?$(3%p(B)
 ("wWE" ?$(3%q(B)
 ("wWee" ?$(3%q(B)
 ("wW'" ?$(3%r(B)
 ("We" ?$(3%n(B)
 ("Wu" ?$(3%r(B)
 ("Wi" ?$(3%o(B)
 ("W" ?$(3%p(B)
 ("Wa" ?$(3%p(B)
 ("WE" ?$(3%q(B)
 ("Wee" ?$(3%q(B)
 ("W'" ?$(3%r(B)
 ("`1" ?$(3$p(B)
 ("`2" ?$(3$q(B)
 ("`3" ?$(3$r(B)
 ("`4" ?$(3$s(B)
 ("`5" ?$(3$t(B)
 ("`6" ?$(3$u(B)
 ("`7" ?$(3$v(B)
 ("`8" ?$(3$w(B)
 ("`9" ?$(3$x(B)
 ("`10" ?$(3$y(B)
 ("`20" ?$(3$z(B)
 ("`30" ?$(3${(B)
 ("`40" ?$(3$|(B)
 ("`50" ?$(3$}(B)
 ("`60" ?$(3$~(B)
 ("`70" ?$(3%!(B)
 ("`80" ?$(3%"(B)
 ("`90" ?$(3%#(B)
 ("`100" ?$(3%$(B)
 ("`1000" ["$(3$y%$(B"])
 ("`2000" ["$(3$z%$(B"])
 ("`3000" ["$(3${%$(B"])
 ("`4000" ["$(3$|%$(B"])
 ("`5000" ["$(3$}%$(B"])
 ("`6000" ["$(3$~%$(B"])
 ("`7000" ["$(3%!%$(B"])
 ("`8000" ["$(3%"%$(B"])
 ("`9000" ["$(3%#%$(B"])
 ("`10000" ?$(3%%(B)
 ("`20000" ["$(3$q%%(B"])
 ("`30000" ["$(3$r%%(B"])
 ("`40000" ["$(3$s%%(B"])
 ("`50000" ["$(3$t%%(B"])
 ("`60000" ["$(3$u%%(B"])
 ("`70000" ["$(3$v%%(B"])
 ("`80000" ["$(3$w%%(B"])
 ("`90000" ["$(3$x%%(B"])
 ("`100000" ["$(3$y%%(B"])
 ("`200000" ["$(3$z%%(B"])
 ("`300000" ["$(3${%%(B"])
 ("`400000" ["$(3$|%%(B"])
 ("`500000" ["$(3$}%%(B"])
 ("`600000" ["$(3$~%%(B"])
 ("`700000" ["$(3%!%%(B"])
 ("`800000" ["$(3%"%%(B"])
 ("`900000" ["$(3%#%%(B"])
 ("`1000000" ["$(3%$%%(B"])
)

(defun ethio-select-a-translation ()
  ;; The translation of `a' depends on the language
  ;; (either Tigrigna or Amharic).
  (quail-defrule "a"
		 (if (ethio-prefer-amharic-p) ?$(3"c(B ?$(3"f(B)
		 "ethiopic"))

;;; arch-tag: 66c182a8-d802-40fa-9c0d-d8ebe2f909d5
;;; ethiopic.el ends here
