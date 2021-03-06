// -*- C++ -*- header wrapper.

// Copyright (C) 1997-1999, 2000 Free Software Foundation, Inc.
//
// This file is part of the GNU ISO C++ Library.  This library is free
// software; you can redistribute it and/or modify it under the
// terms of the GNU General Public License as published by the
// Free Software Foundation; either version 2, or (at your option)
// any later version.

// This library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License along
// with this library; see the file COPYING.  If not, write to the Free
// Software Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307,
// USA.

// As a special exception, you may use this file as part of a free software
// library without restriction.  Specifically, if other files instantiate
// templates or use macros or inline functions from this file, or you compile
// this file and link it with other files to produce an executable, this
// file does not by itself cause the resulting executable to be covered by
// the GNU General Public License.  This exception does not however
// invalidate any other reasons why the executable file might be covered by
// the GNU General Public License.


#ifndef  _INCLUDED_CPP_MATH_H_
# define _INCLUDED_CPP_MATH_H_ 1

# ifdef _IN_C_LEGACY_  /* sub-included by a C header */
      // get out of the "legacy"
    } // close extern "C"
  }   // close namespace _C_legacy::
#  undef _IN_C_LEGACY_
#  define _MATH_NEED_C_LEGACY_
# endif

# include <cmath>

  // Expose global C names, including non-standard ones, but shadow
  // some names and types with the std:: C++ version.
  using std::abs;
  using std::acos;
  using std::asin;
  using std::atan;
  using std::atan2;
  using std::cos;
  using std::sin;
  using std::tan;
  using std::cosh;
  using std::sinh;
  using std::tanh;
  using std::exp;
  using std::frexp;
  using std::ldexp;
  using std::log;
  using std::log10;
  using std::modf;
  using std::pow;
  using std::sqrt;
  using std::ceil;
  using std::fabs;
  using std::floor;
  using std::fmod;

  // From ISO/IEC 9899:1999
  using std::absf;
  using std::acosf;
  using std::asinf;
  using std::atanf;
  using std::atan2f;
  using std::cosf;
  using std::sinf;
  using std::tanf;
  using std::coshf;
  using std::sinhf;
  using std::tanhf;
  using std::expf;
  using std::frexpf;
  using std::ldexpf;
  using std::logf;
  using std::log10f;
  using std::modff;
  using std::powf;
  using std::sqrtf;
  using std::ceilf;
  using std::fabsf;
  using std::floorf;
  using std::fmodf;

  // From ISO/IEC 9899:1999
  using std::absl;
  using std::acosl;
  using std::asinl;
  using std::atanl;
  using std::atan2l;
  using std::cosl;
  using std::sinl;
  using std::tanl;
  using std::coshl;
  using std::sinhl;
  using std::tanhl;
  using std::expl;
  using std::frexpl;
  using std::ldexpl;
  using std::logl;
  using std::log10l;
  using std::modfl;
  using std::powl;
  using std::sqrtl;
  using std::ceill;
  using std::fabsl;
  using std::floorl;
  using std::fmodl;

# ifdef _MATH_NEED_C_LEGACY_
  // dive back into the "swamp"
  namespace _C_legacy {
    extern "C" {
#  define _IN_C_LEGACY_
#  undef _MATH_NEED_C_LEGACY_
# endif /* _MATH_NEED_C_LEGACY_ */
#endif /* _INCLUDED_CPP_MATH_H_ */




