Return-Path: <Kexin.Hao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF868E00C82; Thu,  2 Jun 2016 02:40:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87B47E00C70
	for <poky@yoctoproject.org>; Thu,  2 Jun 2016 02:40:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id u529eHLi030046
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 2 Jun 2016 02:40:17 -0700
Received: from pek-khao-d1 (147.11.178.22) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Thu, 2 Jun 2016 02:40:16 -0700
Date: Thu, 2 Jun 2016 17:40:12 +0800
From: Kevin Hao <kexin.hao@windriver.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Message-ID: <20160602094012.GA11730@pek-khao-d1>
References: <1464853867-111723-1-git-send-email-kexin.hao@windriver.com>
	<CAHiDW_GmskgusdR6wuGwnUtoKTwh1bQq0ZjCFyJ0c+xexei4Fw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHiDW_GmskgusdR6wuGwnUtoKTwh1bQq0ZjCFyJ0c+xexei4Fw@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] yocto-bsps: u-boot: Search for rootfs partitions on both SD and eMMC
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
X-List-Received-Date: Thu, 02 Jun 2016 09:40:21 -0000
X-Groupsio-MsgNum: 10462
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VS++wcV0S1rZb1Fb"
Content-Disposition: inline

--VS++wcV0S1rZb1Fb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 02, 2016 at 11:57:25AM +0300, Jussi Kukkonen wrote:
> > +Upstream-Status: Inappropriate [not author]
> > +
> > +Signed-off-by: Jussi Laako <jussi.laako@linux.intel.com>
> > +[Kevin: Add the Upstream-Status tag]
>=20
> I realise there are cases when upstreaming is not a good choice but ... I=
 don't
> think this was what Saul was hoping for when he recommended upstreaming a=
nd
> asked for an Upstream-Status the first time this patch was sent.

I only saw that Saul asked to add the Upstream-Status tag in the patch in o=
rder
to be compatible with the yocto requirement. I didn't noticed that he also
asked to submit this patch to upstream.

For upstreaming:
1) This is not a patch from me.
2) The macro DEFAULT_MMC_TI_ARGS is also used by other TI boards. Some boar=
ds
   may not have the mmc 1 device at all. So this change makes no sense to
   these boards.
3) We have many ways to overwrite the default value of "finduuid" such as
   (boot.scr, uEnv.txt). The default env for this board is already very
   complex, I don't like to make it even more complex.

Give the above reasons, I am fine to integrate this patch to yocto-bsps for
our convenient. But I will not take the responsibility to upstreaming it.

Thanks,
Kevin

--VS++wcV0S1rZb1Fb
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEbBAEBCAAGBQJXT/78AAoJEJNY7TDerrFxP3QH+KMs6/zLdURRPu+bK9NWBSBZ
vkIyiaf71gYDO4RUmzv+p60t/cCav3WN02PyCkq3nIp3xpBg2srapwZFEPw6B7k9
vtrEi0ZTDUnLCY4SxI8ZmLtwBfW+L6W0Q2wjNw0PRfB/9wrj2hC+dPwy69YvlijQ
8T5Og46uKXeeOe5QmMxuURuHeWQCAXOXd4pCKSer8Wki6uopnFIg966MBfTj0UV2
Ovo1WKc5HG/KXPq4avyPuvZ6S0se45/lfRLvwg6pCu9I3s+ZuXw2pgcqwlfsx5Nk
on53qXIE6dVg5EMamM4UfwwAG1/uEmRPlMN/MpSETBfmhmbi2ccDalruujcEhA==
=aA+u
-----END PGP SIGNATURE-----

--VS++wcV0S1rZb1Fb--
