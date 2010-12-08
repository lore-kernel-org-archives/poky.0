Return-Path: <qing.he@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6B11A4C811F4
	for <poky@yoctoproject.org>; Tue,  7 Dec 2010 21:17:15 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 07 Dec 2010 19:17:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,314,1288594800"; d="scan'208";a="358581755"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by azsmga001.ch.intel.com with ESMTP; 07 Dec 2010 19:17:14 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PQARo-0005Qd-Un; Wed, 08 Dec 2010 11:12:04 +0800
Date: Wed, 8 Dec 2010 11:12:04 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101208031204.GA20033@qhe2-db>
References: <a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
	<1291597457.14277.2931.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
	<1291725455.11475.10.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1291725455.11475.10.camel@rex>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: [PATCH 1/1] curl: fix native dependency
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
X-List-Received-Date: Wed, 08 Dec 2010 03:17:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, 2010-12-07 at 20:37 +0800, Richard Purdie wrote:
> On Tue, 2010-12-07 at 15:55 +0800, Tian, Kevin wrote:
> > >From: Richard Purdie [mailto:rpurdie@linux.intel.com]
> > >http://git.pokylinux.org/cgit.cgi/poky-contrib/commit/?h=rpurdie/bitbake&id=c77410305f
> > >e736aa195ce720c8317b39da057052
> > 
> > yes, that looks a clear fix.
> 
> In the absence of Chris saying no, I've merged this into Poky so it
> doesn't get lost.

Thank you for the fix, I've been looking the smart data section
recently, and the rationale becomes much clearer to me.


However, the following case still has some confusion:

FOO = "A"
FOO_append = "B"
FOO_virtclass-native = "C"

when in virtclass-native, the output is simply "C", instead of "CB"
as I expected

> 
> > Actually my original thought was a little bit different. Atm I thought that only one
> > appendix should take effect, i.e:
> > 
> > FOO = "A"
> > FOO_append_OVERA = "B"
> > FOO_append_OVERB = "C"
> > 
> > If OVERB is higher priority than OVERA, the result would be "AC" then.
> > 
> > Now obviously my earlier thought is wrong. Every _append appends a new
> > value if the override is valid. :-)
> 
> Right, there is just the question of ordering.
> 
> > I also thought that there's no ordering constraint in this design. either "A B C"
> > or "A C B" could work, unless the appendix itself has order constraint, say 
> > a patch sequence. But I'm not sure whether there's real usage and we need
> > to handle it or not.
> 
> I think its not something we should worry too much about, just something
> to be aware of.

There is some occasion where the ordering may matter, for example, CFLAGS
(and some other command line options). But even this may avoid the need of
predicatable order if we are careful.

> 
> I do still think we should support FOO_append_OVERA_OVERB_OVERC though
> perhaps we should leave a bug open on that?

This question also arose when I read the code, then I realize that
FOO_append_OVERA_OVERB_OVERC doesn't work in current design. Previously
I expected something like a staged handling, i.e. peeling off the
append/prepend first, and then handling override, but actually they are
not that loosely coupled.

That said, it seems supporting multiple overrides in append is still
ok, I tried to sketch a patch as follow, seems work for
FOO_append_virtclass-native_qemux86 = "C"

---
diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
index c8cd8f8..116ea10 100644
--- a/bitbake/lib/bb/data_smart.py
+++ b/bitbake/lib/bb/data_smart.py
@@ -160,9 +160,15 @@ class DataSmart:
                 for append in appends:
                     keep = []
                     for (a, o) in self.getVarFlag(append, op) or []:
-                        if o and not o in overrides:
-                            keep.append((a ,o))
-                            continue
+                        if o:
+                            applicable = 1
+                            for override in o.split('_'):
+                                if not override in overrides:
+                                    applicable = 0
+                                    break
+                            if not applicable:
+                                keep.append((a ,o))
+                                continue
 
                         if op is "_append":
                             sval = self.getVar(append, False) or ""
---


Thanks,
Qing

