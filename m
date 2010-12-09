Return-Path: <dongxiao.xu@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9ED954C80039
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 08:44:45 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 09 Dec 2010 06:44:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,320,1288594800"; d="scan'208";a="866355236"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2010 06:44:44 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 9 Dec 2010 22:44:06 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi; Thu, 9 Dec 2010
	22:44:05 +0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Date: Thu, 9 Dec 2010 22:44:04 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuXnxUCYKjCi+LrRN+fc/NvlXui5gADmCug
Message-ID: <D5AB6E638E5A3E4B8F4406B113A5A19A314F313A@shsmsx501.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2BAE@shsmsx501.ccr.corp.intel.com>
	<1291819067.1554.606.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F2E1C@shsmsx501.ccr.corp.intel.com>
	<625BA99ED14B2D499DC4E29D8138F1504D515D10E7@shsmsx502.ccr.corp.intel.com>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F3004@shsmsx501.ccr.corp.intel.com>
	<1291893846.1554.793.camel@rex>
	<D5AB6E638E5A3E4B8F4406B113A5A19A314F30F3@shsmsx501.ccr.corp.intel.com>
	<1291898758.1554.819.camel@rex>
In-Reply-To: <1291898758.1554.819.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Chris Larson <clarson@kergoth.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: About the operator "??="
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 09 Dec 2010 14:44:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Richard Purdie wrote:
> On Thu, 2010-12-09 at 20:13 +0800, Xu, Dongxiao wrote:
>> w/ patch:
>> time bitbake -p
>>=20
>> real    0m26.189s
>> user    0m25.480s
>> sys     0m0.420s
>>=20
>> w/o patch:
>> time bitbake -p
>>=20
>> real    0m30.940s
>> user    0m30.230s
>> sys     0m0.460s
>=20
> Thanks, thats 5/31 so about 15% which is nice and a confirmed speedup.
> Sometimes the profiling can distort things slightly so this is a good
> sanity check.=20
>=20
> Can you see what the impact is to parsing if we do all the work we do
> in setVar in setVarFlag too?=20

I made the following patch (setVarFlag.patch) to move everything in setVar =
to setVarFlag, please help to review it.

Please note one place that I modified, see the indent of "self._seen_overri=
des[override].add( var )", I thought it was a bug in original code.

After adding this, the "two lines" in original "??=3D" optimization patch a=
re no longer needed.

+            if bb.data.getVarFlag(key, "content", data) is None:
+                bb.data.setVar(key, None, data)

I rerun "time bitbake -p" with the two patches (see below, one is setVarFla=
g.patch, another is the "??=3D" optimization patch)
The result is:

real    0m27.049s
user    0m26.340s
sys     0m0.440s

The parsing time is a bit longer ( < 1 sec) than without the following "set=
VarFlag.patch".

Thanks,
Dongxiao



"setVarFlag.patch"

---------------------------------------------------------------------------=
--------------------------

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py in=
dex b9d9476..3fe2395 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -210,38 +210,7 @@ class DataSmart:
             self.initVar(var)
=20
     def setVar(self, var, value):
-        self.expand_cache =3D {}
-        match  =3D __setvar_regexp__.match(var)
-        if match and match.group("keyword") in __setvar_keyword__:
-            base =3D match.group('base')
-            keyword =3D match.group("keyword")
-            override =3D match.group('add')
-            l =3D self.getVarFlag(base, keyword) or []
-            l.append([value, override])
-            self.setVarFlag(base, keyword, l)
-
-            # todo make sure keyword is not __doc__ or __module__
-            # pay the cookie monster
-            try:
-                self._special_values[keyword].add( base )
-            except KeyError:
-                self._special_values[keyword] =3D set()
-                self._special_values[keyword].add( base )
-
-            return
-
-        if not var in self.dict:
-            self._makeShadowCopy(var)
-
-        # more cookies for the cookie monster
-        if '_' in var:
-            override =3D var[var.rfind('_')+1:]
-            if override not in self._seen_overrides:
-                self._seen_overrides[override] =3D set()
-            self._seen_overrides[override].add( var )
-
-        # setting var
-        self.dict[var]["content"] =3D value
+        self.setVarFlag(var, "content", value)
=20
     def getVar(self, var, exp):
         value =3D self.getVarFlag(var, "content") @@ -278,8 +247,38 @@ cla=
ss DataSmart:
         self.dict[var] =3D {}
=20
     def setVarFlag(self, var, flag, flagvalue):
+
+        self.expand_cache =3D {}
+        match  =3D __setvar_regexp__.match(var)
+        if match and match.group("keyword") in __setvar_keyword__ and flag=
 =3D=3D "content":
+            base =3D match.group('base')
+            keyword =3D match.group("keyword")
+            override =3D match.group('add')
+            l =3D self.getVarFlag(base, keyword) or []
+            l.append([flagvalue, override])
+            self.setVarFlag(base, keyword, l)
+
+            # todo make sure keyword is not __doc__ or __module__
+            # pay the cookie monster
+            try:
+                self._special_values[keyword].add( base )
+            except KeyError:
+                self._special_values[keyword] =3D set()
+                self._special_values[keyword].add( base )
+
+            return
+
+
         if not var in self.dict:
             self._makeShadowCopy(var)
+
+        # more cookies for the cookie monster
+        if '_' in var:
+            override =3D var[var.rfind('_')+1:]
+            if override not in self._seen_overrides:
+                self._seen_overrides[override] =3D set()
+                self._seen_overrides[override].add( var )
+
         self.dict[var][flag] =3D flagvalue
=20
     def getVarFlag(self, var, flag):

---------------------------------------------------------------------------=
--------------------------


New "??=3D" optimization patch:

---------------------------------------------------------------------------=
--------------------------

diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py in=
dex 3fe2395..1b8020d 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -215,6 +215,9 @@ class DataSmart:
     def getVar(self, var, exp):
         value =3D self.getVarFlag(var, "content")
=20
+        if value is None:
+            value =3D self.getVarFlag(var, "defaultval")
+
         if exp and value:
             return self.expand(value, var)
         return value
diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py inde=
x 870ae65..cace9ab 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -109,9 +109,6 @@ class DataNode(AstNode):
         if 'flag' in groupd and groupd['flag'] !=3D None:
             bb.data.setVarFlag(key, groupd['flag'], val, data)
         elif groupd["lazyques"]:
-            assigned =3D bb.data.getVar("__lazy_assigned", data) or []
-            assigned.append(key)
-            bb.data.setVar("__lazy_assigned", assigned, data)
             bb.data.setVarFlag(key, "defaultval", val, data)
         else:
             bb.data.setVar(key, val, data) @@ -301,10 +298,6 @@ def handle=
Inherit(statements, m):
     statements.append(InheritNode(m.group(1)))
=20
 def finalize(fn, d, variant =3D None):
-    for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
-        if bb.data.getVar(lazykey, d) is None:
-            val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
-            bb.data.setVar(lazykey, val, d)
=20
     bb.data.expandKeys(d)
     bb.data.update_data(d)

---------------------------------------------------------------------------=
--------------------------

>=20
> I'm definitely in favour of the patch, just a few details to make
> sure of :)=20
>=20
> Cheers,
>=20
> Richard


