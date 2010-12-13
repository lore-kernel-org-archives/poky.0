Return-Path: <qing.he@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id B305B4C80048
	for <poky@yoctoproject.org>; Mon, 13 Dec 2010 04:53:59 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 13 Dec 2010 02:53:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,335,1288594800"; d="scan'208";a="867536121"
Received: from qhe2-db.sh.intel.com ([10.239.13.31])
	by fmsmga001.fm.intel.com with ESMTP; 13 Dec 2010 02:53:58 -0800
Received: from qhe2 by qhe2-db.sh.intel.com with local (Exim 4.71)
	(envelope-from <qing.he@intel.com>)
	id 1PS5xT-0005Zj-Hw; Mon, 13 Dec 2010 18:48:43 +0800
Date: Mon, 13 Dec 2010 18:48:43 +0800
From: Qing He <qing.he@intel.com>
To: Richard Purdie <rpurdie@linux.intel.com>
Message-ID: <20101213104843.GA21407@qhe2-db>
References: <AANLkTi=oxv9goiEMAfpkDAvq7n_GfGUMSXsonXDdzixd@mail.gmail.com>
	<1291033557.14277.944.camel@rex>
	<AANLkTinYx+43yRYFu=BYQPVJHox6CmBgOMFF199z3BC=@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D475430EC@shsmsx502.ccr.corp.intel.com>
	<1291597457.14277.2931.camel@rex>
	<625BA99ED14B2D499DC4E29D8138F1504D47543B3B@shsmsx502.ccr.corp.intel.com>
	<1291725455.11475.10.camel@rex> <20101208031204.GA20033@qhe2-db>
	<1291907772.1554.894.camel@rex> <20101213055202.GA19053@qhe2-db>
MIME-Version: 1.0
In-Reply-To: <20101213055202.GA19053@qhe2-db>
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
X-List-Received-Date: Mon, 13 Dec 2010 10:54:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, 2010-12-13 at 13:52 +0800, Qing He wrote:
> On Thu, 2010-12-09 at 23:16 +0800, Richard Purdie wrote:
> > On Wed, 2010-12-08 at 11:12 +0800, Qing He wrote:
> > > Thank you for the fix, I've been looking the smart data section
> > > recently, and the rationale becomes much clearer to me.
> > > 
> > > However, the following case still has some confusion:
> > > 
> > > FOO = "A"
> > > FOO_append = "B"
> > > FOO_virtclass-native = "C"
> > > 
> > > when in virtclass-native, the output is simply "C", instead of "CB"
> > > as I expected
> > 
> > This is a tricky one. It would be interesting to see if this applies
> > with other overrides such as MACHINE. The reason I say that is the way
> > the virtclass-native override is added (see native.bbclass).
> 
> So you mean this is intended? The FOO_append is meant to be hidden by
> the use of an override? I'd rather have expected something like this:
> 
> ---
> diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
> index c8cd8f8..3e4c710 100644
> --- a/bitbake/lib/bb/data_smart.py
> +++ b/bitbake/lib/bb/data_smart.py
> @@ -149,6 +149,11 @@ class DataSmart:
>              for var in vars:
>                  name = var[:-l]
>                  try:
> +                    for op in __setvar_keyword__:
> +                        if op in self[name]:
> +                            sval = self.getVarFlag(name, op, False)
> +                            self.setVarFlag(var, op, sval)
> +
>                      self[name] = self[var]
>                  except Exception:
>                      bb.msg.note(1, bb.msg.domain.Data, "Untracked delVar")
> 
> ---

never mind, I thought "self[name]" as "self.dict[name]", it turns out to
be __setitem__ which is at last a setVar() call.

Thanks,
Qing

