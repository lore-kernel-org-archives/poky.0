Return-Path: <btv1==3669040a9bc==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04A59E00790; Thu, 16 Oct 2014 11:01:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1148 seconds by postgrey-1.32 at yocto-www;
	Thu, 16 Oct 2014 11:01:26 PDT
Received: from barbvt10.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8FEEE00744
	for <poky@yoctoproject.org>; Thu, 16 Oct 2014 11:01:26 -0700 (PDT)
X-ASG-Debug-ID: 1413481334-04b02b6fa61348d0001-6z8X8j
Received: from msxbvt03.planar.net ([172.16.0.147]) by barbvt10.planar.com
	with ESMTP id 3Zwhf8zjqhNf5kGQ for <poky@yoctoproject.org>;
	Thu, 16 Oct 2014 10:42:14 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Thu, 16 Oct 2014 10:42:14 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Thu, 16 Oct 2014 10:42:13 -0700
Thread-Topic: [poky] read-only rootfs and additional fs
X-ASG-Orig-Subj: RE: [poky] read-only rootfs and additional fs
Thread-Index: Ac/pKYid1Aq+ufwkQwqmtQLi+A6V8AAPoqNg
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FD8799A57@MSXBEBVT12.planar.net>
References: <CAO+iiFydzxEy6qkW15eD2R036T=DYhL7J+G5yzGem9cSP9AFqA@mail.gmail.com>
	<9C1C9AD1-9813-419B-A268-BBF0432E9159@gmail.com>
In-Reply-To: <9C1C9AD1-9813-419B-A268-BBF0432E9159@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[172.16.0.147]
X-Barracuda-Start-Time: 1413481334
X-Barracuda-URL: http://10.10.111.112:8000/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
	SCORE=-2.02 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.10640
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Subject: Re: read-only rootfs and additional fs
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
X-List-Received-Date: Thu, 16 Oct 2014 18:01:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jens,=20

I've got to ask what about Johnny's approach don't you recommend? And why? =
I ask because I was planning to do something similar, i.e. read only root f=
ile system with a separate writeable partition for configuration data, prob=
ably using soft links in the read only root FS to point at writeable config=
 files where needed.=20

Thanks,
Matt S.=20

> -----Original Message-----
> From: poky-bounces@yoctoproject.org [mailto:poky-
> bounces@yoctoproject.org] On Behalf Of Jens Rehsack
> Sent: Thursday, October 16, 2014 3:11 AM
> To: Johnny Vestergaard
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] read-only rootfs and additional fs
>=20
>=20
> Am 16.10.2014 um 11:14 schrieb Johnny Vestergaard <jkv@unixcluster.dk>:
>=20
> > Hi,
> >
> > I have used "root-only-rootfs" for my build of the poky reference
> image - but i would like to mount an additional fs with write
> permission to enable saving a few config files that is configurable by
> the end-user. How would i do that with poky?
> >
> > In essence my question can be boiled down to:
> > How do i create and add a additional filesystem to the image?
>=20
> Even if I cannot recommend that for anybody's use, this can give you a
> starter:
>=20
> * extend fstab to our needs: https://github.com/rdm-dev/meta-
> jens/tree/master/recipes-core/base-files
> * add mount as we want: https://github.com/rdm-dev/meta-
> jens/blob/master/recipes-core/initscripts/initscripts/mountunion.sh
> * use mount-bind instead of links where applicable:
> https://github.com/rdm-dev/meta-jens/blob/master/recipes-
> core/initscripts/initscripts/populate-volatile.sh
> * create image/rootfs bundles we need: https://github.com/rdm-dev/meta-
> jens/blob/master/scripts/mkimgs
> * put stuff on a flash-device: https://github.com/rdm-dev/meta-
> jens/tree/master/recipes-rdm/prd/prd-flash
>=20
> Cheers
> --
> Jens Rehsack
> rehsack@gmail.com
>=20
>=20
>=20
>=20
>=20
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

