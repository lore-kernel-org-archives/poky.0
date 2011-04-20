Return-Path: <ke.yu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 635BE4C804CA
	for <poky@yoctoproject.org>; Wed, 20 Apr 2011 02:52:52 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 20 Apr 2011 00:52:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.64,245,1301900400"; d="scan'208";a="735919672"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by orsmga001.jf.intel.com with ESMTP; 20 Apr 2011 00:52:50 -0700
Received: from pgsmsx509.gar.corp.intel.com (172.30.13.17) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 20 Apr 2011 15:51:24 +0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	PGSMSX509.gar.corp.intel.com (172.30.13.17) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 20 Apr 2011 15:51:23 +0800
Received: from shsmsx501.ccr.corp.intel.com ([10.239.4.141]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Wed, 20 Apr 2011 15:51:17 +0800
From: "Yu, Ke" <ke.yu@intel.com>
To: "Purdie, Richard" <richard.purdie@intel.com>
Date: Wed, 20 Apr 2011 15:51:16 +0800
Thread-Topic: On Bug 972 - tag does not work in git fetcher
Thread-Index: Acv/L7ndazCOujqcQr6NKQgpeeqvhg==
Message-ID: <33AB447FBD802F4E932063B962385B355290F3F9@shsmsx501.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: On Bug 972 - tag does not work in git fetcher
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
X-List-Received-Date: Wed, 20 Apr 2011 07:52:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Richard,

I get the root cause of bug 972 (http://bugzilla.pokylinux.org/show_bug.cgi=
?id=3D972) , and want to get your comments on how to fix the bug.

the culprit of this bug is commit http://git.pokylinux.org/cgit/cgit.cgi/po=
ky/commit/?id=3D5920e85c561624e657c126df58f5c378a8950bbc :
"
bitbake/fetch2/git: Ensure unresolved branches are translated into revision=
s

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>

diff --git a/bitbake/lib/bb/fetch2/git.py b/bitbake/lib/bb/fetch2/git.py
index 6bcc4a4..f05a360 100644
--- a/bitbake/lib/bb/fetch2/git.py
+++ b/bitbake/lib/bb/fetch2/git.py
@@ -72,7 +72,8 @@ class Git(FetchMethod):
         ud.basecmd =3D data.getVar("FETCHCMD_git", d, True) or "git"
=20
         for name in ud.names:
-            if not ud.revisions[name] or ud.revisions[name] =3D=3D "master=
":
+            # Ensure anything that doesn't look like a sha256 checksum/rev=
ision is translated into one
+            if not ud.revisions[name] or len(ud.revisions[name]) !=3D 40  =
or (False in [c in "abcdef0123456789" for c in ud.revisions[name]]):
                 ud.revisions[name] =3D self.latest_revision(url, ud, d, na=
me)
=20
         ud.localfile =3D ud.clonedir
"
with this commit, tag is treated as invalid revision since it is not sha256=
 checksum, so tag become unusable.=20

To fix it,  one option is to revert this commit, another option is to check=
 if ud.revisions[name] is tag. I prefer the first option to revert this com=
mit, because if user set incorrect revision, reporting error to user would =
be better.  In this case user have chance to fix it. the above commit actua=
lly hide the error from user which sound not good.

On the other hand, I don't remember the purpose of this commit, so want to =
get your comment to make sure not breaking other things.

Regards
Ke

