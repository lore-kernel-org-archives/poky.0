Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8669D4C8007E
	for <poky@yoctoproject.org>; Tue,  1 Feb 2011 08:34:37 -0600 (CST)
Received: by wwi17 with SMTP id 17so4777840wwi.5
	for <poky@yoctoproject.org>; Tue, 01 Feb 2011 06:34:36 -0800 (PST)
Received: by 10.216.51.130 with SMTP id b2mr7527742wec.42.1296570876336;
	Tue, 01 Feb 2011 06:34:36 -0800 (PST)
Received: from [172.20.0.255] (ip545070eb.adsl-surfen.hetnet.nl
	[84.80.112.235])
	by mx.google.com with ESMTPS id o33sm11473821wej.13.2011.02.01.06.34.35
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Tue, 01 Feb 2011 06:34:35 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <912371C7-ACCF-4DA9-A2E7-2F863C72189F@dominion.thruhere.net>
Date: Tue, 1 Feb 2011 15:34:34 +0100
Message-Id: <F9AEC290-DD02-4D3C-9649-DE28DCD6DF18@dominion.thruhere.net>
References: <912371C7-ACCF-4DA9-A2E7-2F863C72189F@dominion.thruhere.net>
To: poky <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.1082)
Subject: Re: Fetcher2 problems break parsing
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
X-List-Received-Date: Tue, 01 Feb 2011 14:34:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 1 feb 2011, om 14:07 heeft Koen Kooi het volgende geschreven:

> Hi,
>=20
> Since a few days I'm getting this on recipes using SRCPV:
>=20
> Executing: MACHINE=3Dbeagleboard bitbake -b =
/OE/tentacle/sources/openembedded/meta/recipes-graphics/xorg-lib/libxext_g=
it.bb -c fetch
> Pseudo is not present but is required, building this first before the =
main build
> Loading cache: 100% =
|#########################################################################=
#####################################################| ETA:  00:00:00
> Loaded 448 entries from dependency cache.
> NOTE: Angstrom DOES NOT support util-linux because only util-linux-ng =
is supported                                                             =
    | ETA:  --:--:--
> NOTE: Angstrom DOES NOT support gconf-dbus because gconf-dbus has been =
merged back into main GConf
> NOTE: Angstrom DOES NOT support gconf-dbus-native because gconf-dbus =
has been merged back into main GConf
> ERROR: Error evaluating '${@bb.fetch.get_srcrev(d)}'
> Traceback (most recent call last):
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, =
in expandWithRefs
>    s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in =
python_sub
>    value =3D utils.better_eval(codeobj, DataContext(self.d))
>  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in =
better_eval
>    return eval(source, _context, locals)
>  File "SRCPV", line 1, in <module>
>  File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line =
398, in get_srcrev
>    return urldata[scms[0]].method.sortable_revision(scms[0], =
urldata[scms[0]], d)
>  File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line =
870, in sortable_revision
>    return str(count + "+" + latest_rev)
> TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
>=20
> ERROR: Error evaluating '1.0.99.1+gitr${SRCPV}'
> Traceback (most recent call last):
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 116, =
in expandWithRefs
>    s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 60, in =
var_sub
>    var =3D self.d.getVar(key, 1)
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 260, =
in getVar
>    return self.expand(value, var)
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 132, =
in expand
>    return self.expandWithRefs(s, varname).value
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 117, =
in expandWithRefs
>    s =3D __expand_python_regexp__.sub(varparse.python_sub, s)
>  File "/OE/tentacle/sources/bitbake/lib/bb/data_smart.py", line 76, in =
python_sub
>    value =3D utils.better_eval(codeobj, DataContext(self.d))
>  File "/OE/tentacle/sources/bitbake/lib/bb/utils.py", line 387, in =
better_eval
>    return eval(source, _context, locals)
>  File "SRCPV", line 1, in <module>
>  File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line =
398, in get_srcrev
>    return urldata[scms[0]].method.sortable_revision(scms[0], =
urldata[scms[0]], d)
>  File "/OE/tentacle/sources/bitbake/lib/bb/fetch2/__init__.py", line =
870, in sortable_revision
>    return str(count + "+" + latest_rev)
> TypeError: unsupported operand type(s) for +: 'NoneType' and 'str'
>=20
> This seems to happen when no SRCREV is set, is that the intended =
behaviour?

RP gave me this patch to try:

koen@dominion:/OE/tentacle/sources/openembedded$ git diff
diff --git a/bitbake/lib/bb/fetch2/__init__.py =
b/bitbake/lib/bb/fetch2/__init__.py
index 9fe4eb2..d62ba81 100644
--- a/bitbake/lib/bb/fetch2/__init__.py
+++ b/bitbake/lib/bb/fetch2/__init__.py
@@ -864,7 +864,7 @@ class Fetch(object):
         if uselocalcount:
             count =3D Fetch.localcount_internal_helper(ud, d)
         if count is None:
-            count =3D localcounts[key + '_count']
+            count =3D localcounts[key + '_count'] or "0"
=20
         if last_rev =3D=3D latest_rev:
             return str(count + "+" + latest_rev)


and that seems to work.

regards,

Koen=

