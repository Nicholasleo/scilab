// =============================================================================
// Scilab ( http://www.scilab.org/ ) - This file is part of Scilab
// Copyright (C) 2016 - Scilab Enterprises - Adeline CARNIS
//
//  This file is distributed under the same license as the Scilab package.
// =============================================================================

// <-- TEST WITH GRAPHIC -->

// <-- Non-regression test for bug 14758 -->
//
// <-- Bugzilla URL -->
// http://bugzilla.scilab.org/14758
//
// <-- Short Description -->
// xstringb creates a figure when no exists.

t = "Here is a sample";
xstringb(0,0,[t; " "; t],1,1);
e = gce();
assert_checkequal(e.text, [t; ""; t]);
