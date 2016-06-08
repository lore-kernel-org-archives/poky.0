Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62885E00CDE; Tue,  7 Jun 2016 21:56:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B92C5E00CBE
	for <poky@yoctoproject.org>; Tue,  7 Jun 2016 21:56:07 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga104.fm.intel.com with ESMTP; 07 Jun 2016 21:56:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,437,1459839600"; d="scan'208";a="118030408"
Received: from ntjioe-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.211])
	by fmsmga004.fm.intel.com with ESMTP; 07 Jun 2016 21:56:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@maximatecc.com>
Date: Wed, 08 Jun 2016 16:56:02 +1200
Message-ID: <2358144.WdaeRfuoQP@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.5.5-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD400438B4@AMDTCEX15.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4004044C@AMDTCEX15.actuant.pri>
	<488452498.gBbhXqb4nk@peggleto-mobl.ger.corp.intel.com>
	<83DB4EC8FADD45428E3CC4E3664761FD400438B4@AMDTCEX15.actuant.pri>
MIME-Version: 1.0
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Recompiles in Yocto/Poky
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
X-List-Received-Date: Wed, 08 Jun 2016 04:56:09 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

There's no mechanism to exclude files at present, but it sounds like we=
 should=20
add one. One workaround right now would be to track your source tree in=
 a git=20
repository and have .gitignore cover the generated files; I appreciate =
though=20
that if you aren't using git for version control this is hardly ideal s=
o it's=20
not a substitute for a proper fix.

Cheers,
Paul

On Wed, 08 Jun 2016 04:50:15 Keskinarkaus, Teemu wrote:
> I think there are some files that are being generated at compilation =
time so
> most likely those triggers the recompilation every time.
>=20
> The next question is that how to I 'hide' files so that they don't tr=
igger
> the recompilation? Is that something that I need to do on my applicat=
ion
> side or can I list files in Yocto to ignore when hashing files? This =
is
> most likely the proper way to deal with this issue rather than disabl=
ing
> whole feature.
>=20
> Teemu Keskinarkaus
> Software system engineer
> maximatecc
> making machines smart, safe and productive
>=20
>=20
> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: 8. kes=E4kuuta 2016 4:52
> To: Peter Kjellerstedt; Keskinarkaus, Teemu
> Cc: poky@yoctoproject.org
> Subject: Re: [poky] Recompiles in Yocto/Poky
>=20
> On Fri, 03 Jun 2016 07:00:14 Peter Kjellerstedt wrote:
> > This is a feature introduced to complement the main use of
> > externalsrc, which is together with devtool. When you use "devtool
> > modify -x <recipe>", it fetches the sources as specified in the rec=
ipe
> > and makes them available locally. At the same time it sets up a
> > bbappend in the workspace layer which uses externalsrc to use those=

> > sources when building the recipe. This is intended to make it easy =
to
> > use BitBake to actually work on and develop the sources. However, f=
or
> > this to work in practice, BitBake must rebuild the package if there=

> > are any changes in the sources, but since BitBake normally only loo=
ks
> > at the meta data to determine if a recipe task needs to run, there =
is
> > nothing telling it that the sources have changed. Therefore changes=

> > were made so that code specified using externalsrc is always rebuil=
t.
>=20
> In 2.0 that's how it behaved - what it's supposed to do in 2.1 is det=
ermine
> if the sources have changed by either relying on the git metadata (if=
 the
> source tree is tracked in git) or by hashing all files in the source =
tree
> if it isn't. It could be false triggering if you have files in the so=
urce
> tree that get regenerated as part of the compilation process that are=
n't
> hidden. Teemu, is that the case for your source tree?
>=20
> Unfortunately there is no way at present to turn off this functionali=
ty; we
> could add one, however before doing that I would be more interested i=
n
> looking at making the code more intelligent so it did automatically r=
ebuild
> in response to source changes for this case and not when there were n=
o
> changes, assuming that's practical.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre
>=20
> ________________________________
>=20
> Actuant Corporation Email Notice
>=20
> This message is intended only for the use of the Addressee and may co=
ntain
> information that is PRIVILEGED and/or CONFIDENTIAL. This email is int=
ended
> only for the personal and confidential use of the recipient(s) named =
above.
> If the reader of this email is not an intended recipient, you have re=
ceived
> this email in error and any review, dissemination, distribution or co=
pying
> is strictly prohibited. If you have received this email in error, ple=
ase
> notify the sender immediately by return mail and permanently delete t=
he
> copy you received.
>=20
> Thank you.

--=20

Paul Eggleton
Intel Open Source Technology Centre

