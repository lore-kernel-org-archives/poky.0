Return-Path: <kevin.tian@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 98AC24C80FFE
	for <poky@yoctoproject.org>; Wed,  8 Dec 2010 06:49:35 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Dec 2010 04:49:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,315,1288594800"; d="scan'208";a="581741612"
Received: from pgsmsx603.gar.corp.intel.com ([10.221.43.87])
	by orsmga002.jf.intel.com with ESMTP; 08 Dec 2010 04:49:21 -0800
Received: from shsmsx602.ccr.corp.intel.com (10.239.4.104) by
	pgsmsx603.gar.corp.intel.com (10.221.43.87) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Wed, 8 Dec 2010 20:49:20 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	SHSMSX602.ccr.corp.intel.com ([10.239.4.104]) with mapi; Wed, 8 Dec 2010
	20:49:19 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>, Richard Purdie
	<rpurdie@linux.intel.com>, "Xu, Dongxiao" <dongxiao.xu@intel.com>
Date: Wed, 8 Dec 2010 20:49:17 +0800
Thread-Topic: [poky] About the operator "??="
Thread-Index: AcuWwvrDSdKYfTdKRRuU73KRtggVxQACGNOgAAKuB4A=
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D515D0DDB@shsmsx502.ccr.corp.intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A303B2EF0@shsmsx501.ccr.corp.intel.com>
	<1291804222.1554.256.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D515D0DC5@shsmsx502.ccr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
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
X-List-Received-Date: Wed, 08 Dec 2010 12:49:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: Tian, Kevin
>Sent: Wednesday, December 08, 2010 7:35 PM
>
>>From: Richard Purdie
>>Sent: Wednesday, December 08, 2010 6:30 PM
>>
>>Hi Dongxiao,
>>
>>On Wed, 2010-12-01 at 09:57 +0800, Xu, Dongxiao wrote:
>>> Recently when investigating the file parsing speed, I found the
>>> implementation of "??=3D" is another hot spot. This operator will not
>>> apply the default assignment until the end of the parse, which is
>>> different from "?=3D". According to current poky, the users for "??=3D"=
 is
>>> mostly the scm revisions stored in poky-default-revisions.inc.
>>>
>>> Currently the final assignment logic for "??=3D" is added in finalize()=
,
>>> which costs about 20% parsing time.
>>
>>Can I take a look at the graph showing that? I'm a little surprised it
>>takes 20% of the time, that is a rather scary amount!
>>
>
>I don't have the graph, but did do a simple test by printing the lazy valu=
e
>list in finalize(). There're 166 items in total. Regarding finalize() may =
be
>invoked multiple times for same recipe and we have over 700 recipes scanne=
d
>in a fresh run, it may contribute obvious overhead just like what Dongxiao
>previously optimized for distro tracking fields.
>
>I think we could remove the lazy key from the list after grabbing it as th=
e
>default value, and is now testing it...
>

I have a simple patch:

diff --git a/bitbake/lib/bb/parse/ast.py b/bitbake/lib/bb/parse/ast.py
index 870ae65..4b98799 100644
--- a/bitbake/lib/bb/parse/ast.py
+++ b/bitbake/lib/bb/parse/ast.py
@@ -301,10 +301,13 @@ def handleInherit(statements, m):
     statements.append(InheritNode(m.group(1)))

 def finalize(fn, d, variant =3D None):
+    assigned =3D bb.data.getVar("__lazy_assigned", d) or ()
     for lazykey in bb.data.getVar("__lazy_assigned", d) or ():
         if bb.data.getVar(lazykey, d) is None:
             val =3D bb.data.getVarFlag(lazykey, "defaultval", d)
             bb.data.setVar(lazykey, val, d)
+            assigned.remove(lazykey)
+    bb.data.setVar("__lazy_assigned", assigned, d)

     bb.data.expandKeys(d)
     bb.data.update_data(d)

However it doesn't work as I expect. Every time the lazy list always contai=
ns 166
items. It looks that each finalize() is invoked in different database conte=
xt, while
I haven't found the global copy yet. Or did I make some silly mistake here?=
 :/

Thanks
Kevin

