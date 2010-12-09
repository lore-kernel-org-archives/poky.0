Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id DCF0B4C80B70
	for <poky@yoctoproject.org>; Thu,  9 Dec 2010 09:16:32 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9FGTDD008567;
	Thu, 9 Dec 2010 15:16:29 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 08488-02; Thu,  9 Dec 2010 15:16:25 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oB9FGODF008561
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 9 Dec 2010 15:16:24 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Qing He <qing.he@intel.com>
In-Reply-To: <20101208031204.GA20033@qhe2-db>
References: <a03c4017a13bda3f20b8f39a4c099cb28f349968.1289982751.git.qing.he@intel.com>
	<1290954166.27143.217.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D42C686F3@shsmsx502.ccr.corp.intel.com>
	<AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
	<1291597457.14277.2931.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
	<1291725455.11475.10.camel@rex>  <20101208031204.GA20033@qhe2-db>
Date: Thu, 09 Dec 2010 15:16:12 +0000
Message-ID: <1291907772.1554.894.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
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
X-List-Received-Date: Thu, 09 Dec 2010 15:16:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-12-08 at 11:12 +0800, Qing He wrote:
> Thank you for the fix, I've been looking the smart data section
> recently, and the rationale becomes much clearer to me.
> 
> However, the following case still has some confusion:
> 
> FOO = "A"
> FOO_append = "B"
> FOO_virtclass-native = "C"
> 
> when in virtclass-native, the output is simply "C", instead of "CB"
> as I expected

This is a tricky one. It would be interesting to see if this applies
with other overrides such as MACHINE. The reason I say that is the way
the virtclass-native override is added (see native.bbclass).

> > > I also thought that there's no ordering constraint in this design. either "A B C"
> > > or "A C B" could work, unless the appendix itself has order constraint, say 
> > > a patch sequence. But I'm not sure whether there's real usage and we need
> > > to handle it or not.
> > 
> > I think its not something we should worry too much about, just something
> > to be aware of.
> 
> There is some occasion where the ordering may matter, for example, CFLAGS
> (and some other command line options). But even this may avoid the need of
> predicatable order if we are careful.

Right, there are cases it will matter like patch application but we just
need to be sensitive to that when writing metadata.

> > I do still think we should support FOO_append_OVERA_OVERB_OVERC though
> > perhaps we should leave a bug open on that?
> 
> This question also arose when I read the code, then I realize that
> FOO_append_OVERA_OVERB_OVERC doesn't work in current design. Previously
> I expected something like a staged handling, i.e. peeling off the
> append/prepend first, and then handling override, but actually they are
> not that loosely coupled.

I'd also actually thought the code worked differently to how it does
before I looked at it!

> That said, it seems supporting multiple overrides in append is still
> ok, I tried to sketch a patch as follow, seems work for
> FOO_append_virtclass-native_qemux86 = "C"

This looks reasonable. In python you should used "True" and "False"
instead of "1" and "0".

I've just mentally been asking myself what if this was a variable like
SRC_URI where the name contains an "_" but since we don't allow
overrides to contain the character, I think we're safe.

I also think you can simplify the logic slightly to be:

+                            for override in o.split('_'):
+                                if not override in overrides:
+                                    keep.append((a ,o)) 
+                                    continue

?

Cheers,

Richard

> ---
> diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
> index c8cd8f8..116ea10 100644
> --- a/bitbake/lib/bb/data_smart.py
> +++ b/bitbake/lib/bb/data_smart.py
> @@ -160,9 +160,15 @@ class DataSmart:
>                  for append in appends:
>                      keep = []
>                      for (a, o) in self.getVarFlag(append, op) or []:
> -                        if o and not o in overrides:
> -                            keep.append((a ,o))
> -                            continue
> +                        if o:
> +                            applicable = 1
> +                            for override in o.split('_'):
> +                                if not override in overrides:
> +                                    applicable = 0
> +                                    break
> +                            if not applicable:
> +                                keep.append((a ,o))
> +                                continue
>  
>                          if op is "_append":
>                              sval = self.getVar(append, False) or ""
> ---
> 
> 
> Thanks,
> Qing
> 



