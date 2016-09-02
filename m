Return-Path: <jianxun.zhang@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01443E0077E; Fri,  2 Sep 2016 11:16:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44006E0070F
	for <poky@yoctoproject.org>; Fri,  2 Sep 2016 11:16:16 -0700 (PDT)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by orsmga104.jf.intel.com with ESMTP; 02 Sep 2016 11:16:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,272,1470726000"; 
   d="scan'208";a="3978157"
Received: from chuang76-mobl2.gar.corp.intel.com ([10.254.191.67])
	by fmsmga005.fm.intel.com with ESMTP; 02 Sep 2016 11:16:15 -0700
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: Jianxun Zhang <jianxun.zhang@linux.intel.com>
In-Reply-To: <1472826906.29583.167.camel@linuxfoundation.org>
Date: Fri, 2 Sep 2016 11:16:18 -0700
Message-Id: <BF550743-D36A-4D39-9CA9-44ABECDE8BAF@linux.intel.com>
References: <CAMAb8ZPvCV1N_BYEC_XoVsfeUH1a3fy7eMe8Vffg-yPQveyFyg@mail.gmail.com>
	<CABcZANmtT7NNLNJOq=pBAnN5K6OjF-XyHS4OOPgnbHyDP6LK_g@mail.gmail.com>
	<CAMAb8ZOEiy_u4MtGF7xXMR9w8AYFwCPSTmbOZ70mBj7_e1gbSQ@mail.gmail.com>
	<1472826906.29583.167.camel@linuxfoundation.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.3124)
Cc: Christopher Larson <clarson@kergoth.com>, Poky <poky@yoctoproject.org>,
	Evade Flow <evadeflow@gmail.com>
Subject: Re: When SRCREV is set to AUTOREV, what triggers (re-)fetching?
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion & patch submission for
	meta-yocto <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2016 18:16:18 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


> On Sep 2, 2016, at 7:35 AM, Richard Purdie =
<richard.purdie@linuxfoundation.org> wrote:
>=20
> On Fri, 2016-09-02 at 10:08 -0400, Evade Flow wrote:
>>> Add ${SRCPV} to your PV (see various recipes in oe-core for
>> examples), then it=E2=80=99ll know to re-run the tasks when srcrev =
changes.
>>=20
>> Thanks for confirming that this is 'supposed' to work, that's great
>> news! Actually, I've already included SRCPV in PV. Here's my recipe,
>> shorn of comments and an uninteresting do_install_append() function:
>=20
> You don't have BB_SRCREV_POLICY set to cache anywhere do you? It
> defaults to clear which is what you want...
>=20
> Does "rm tmp/cache -r" 'fix' make it see new revisions? Knowing that
> would at least help track down the kind of problem you're seeing.
>=20
> What does the full PV look like after expansion? Does it contain an
> older truncated SRCREV ?

BTW, the usage of AUTOREV should be updated in BB user manual section =
4.4. It works intuitively for me. But I don=E2=80=99t know the best =
authentic way to document it and any corner case in a patch...=20

Thanks

>=20
> Cheers,
>=20
> Richard
> --=20
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


