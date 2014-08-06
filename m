Return-Path: <Bart.Jansseune@prodatamobility.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DC45E007F9; Wed,  6 Aug 2014 05:34:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.fortiscorp.eu (mail.fortiscorp.eu [213.246.247.62])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5BD1E007F1
	for <poky@yoctoproject.org>; Wed,  6 Aug 2014 05:34:02 -0700 (PDT)
Received: from psbemail.psbe.site [172.16.2.55] by mail.fortiscorp.eu -
	Websense Email Security (7.3.0); Wed, 06 Aug 2014 14:34:01 +0200
Received: from PSBEMAIL.psbe.site ([172.16.2.55]) by PSBEMAIL.psbe.site
	([172.16.2.55]) with mapi; Wed, 6 Aug 2014 14:34:00 +0200
From: Bart Jansseune <Bart.Jansseune@prodatamobility.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 6 Aug 2014 14:34:00 +0200
Thread-Topic: [poky] examine SSTATE_MIRRORS differences
Thread-Index: Ac+tiFqrD3P16q9fQaCPlhtHIVtcggD6S5GA
Message-ID: <A5CAA1824448514280B127CC52AD68A103073ED10408@PSBEMAIL.psbe.site>
References: <A5CAA1824448514280B127CC52AD68A103073E4635BE@PSBEMAIL.psbe.site>
	<20140801125916.GD16445@jama>
In-Reply-To: <20140801125916.GD16445@jama>
Accept-Language: en-US, fr-BE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US, fr-BE
MIME-Version: 1.0
X-SEF-Processed: 7_3_0_01192__2014_08_06_14_34_01
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: examine SSTATE_MIRRORS differences
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
X-List-Received-Date: Wed, 06 Aug 2014 12:34:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I was having so much differences that comparing the list.M files is still n=
ot really feasible to figure out where the diverging starts. Luckily I foun=
d when comparing siginfo files that the delta in RDEPENDS was package_qa_ch=
eck_rdepends.
This made me realize that this cannot be cause by a MACHINE config or the b=
uild machine property but instead by the poky revision used. And indeed aft=
er a git pull at both sides the SSTATES were in sync.

Nonetheless it could be a useful feature to have an option to the bitbake c=
ommand to stop when it can't use the SSTATE_MIRROR and would need to fetch/=
build/install  locally.

Regards,=20
Bart

Bart Jansseune

-----Original Message-----
From: Martin Jansa [mailto:martin.jansa@gmail.com]=20
Sent: vrijdag 1 augustus 2014 14:59
To: Bart Jansseune
Cc: poky@yoctoproject.org
Subject: Re: [poky] examine SSTATE_MIRRORS differences

On Fri, Aug 01, 2014 at 01:46:40PM +0200, Bart Jansseune wrote:
> Hello,
>=20
> I'm trying to setup a SSTATE_MIRROR using a fast build server so that a s=
low virtual machine doesn't have to rebuild everything.
> Both are Ubuntu 14.04 64 bit machines and use the same poky release (dais=
y).
> What I notice is that for some components the cache is used eg perl-nativ=
e but not for others.
> I understand that once there is a delta between both machines, all depend=
ent packages also mismatch and need to be rebuilt.
>=20
> How do you figure out where things start diverging?
>=20
> Are there requirements on the tools of the build to ensure that SSTATE_MI=
RROR can be used effectively? E.g. the gcc version on both machines might n=
eed to be the same.

Run openembedded-core/scripts/sstate-diff-machines.sh on both machines and =
compare list.M files in generated folders.

That will give you pointers to interesting .sigdata files, which you can co=
mpare with bitbake-diffsigs - which will reveal more .sigdata files and so =
on until you find root cause.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com


