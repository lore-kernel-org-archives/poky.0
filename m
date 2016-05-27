Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73BBEE00E29; Fri, 27 May 2016 02:07:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.20 listed in list.dnswl.org]
X-Greylist: delayed 307 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 May 2016 02:07:23 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09BB2E00DEE
	for <poky@yoctoproject.org>; Fri, 27 May 2016 02:07:23 -0700 (PDT)
Received: from [62.225.157.196] by 3capp-gmx-bs48.server.lan (via HTTP);
	Fri, 27 May 2016 11:02:11 +0200
MIME-Version: 1.0
Message-ID: <trinity-439db5cd-2a82-47c4-8184-dd5e03d49e5d-1464339731287@3capp-gmx-bs48>
From: star@gmx.li
To: "Joshua G Lock" <joshua.g.lock@linux.intel.com>
Date: Fri, 27 May 2016 11:02:11 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1464338437.3484.3.camel@linux.intel.com>
References: <trinity-c97069ff-4043-4992-a7b5-01692cfa5eac-1464326605415@3capp-gmx-bs48>,
	<1464338437.3484.3.camel@linux.intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K0:lEHHFs4Np81D8Ji8G/6gNaBDYj/S4igfBAmCd8qgDIh
	SVDGEsDXqXxktIAlYTOMxXwtCNx5y3XjN/vQISG+KcFmFNdFQX
	fUREZwV1rv2tGWWOopqwQC4GK1zR+pQrjibYoq83WFktutG9gV
	A6IXJNUg//FO4p6wHNAJ8nI3FoocQc6A4D/Sz5PZSytIYkcs+1
	fqp/EnyYmHGrXjTYm+MVcsPKzE47wD78h7wt0OlruuVk4/PAdJ
	6Tffc7YEoMGJThDZaMWdajGUnppzFOWLAxE6O9wGOZ/ipgD4k7 T9q3uE=
X-UI-Out-Filterresults: notjunk:1;V01:K0:ejjRl2Torms=:hIIxOo2dncaVaRMqC7m2QV
	OsmaRi1ClVfITKjeKKm6OMzyrJXGKo94ilu+/iWogAtivd5PxZIw/lK8Tic0yCKmPn0ymGo2Y
	B3fN1YWKCuw4/RDMx8f88HVei8djySh25da/FBCXhiXf7/tzQsUqMc83KtP+cpb+sz4i3LZJ+
	xTEP5Ppy83fGemhDdRFCrgQmAhMz0XfgoEp+ye7gqVJ1OcJoTZzafzRul/RWqQs7bwMeMyVeS
	vLzolg+7s/kCSyQZeMo2IAGi1AG3M5WTHvPxnt5fmqLgxpgmXtC77dTFCH9kuUt7zyULegeK8
	fvGQetuUoFY7eJzPehgp3fW9VQWQJ2Wot75329TRV8qNWVOmS2TuZ7bNMvVEmMcOLypKohyQ6
	i5XTWy31oxuppFko+6QsLqsr0mY5cifmT//WfOU7NwWqQWd6r/YO8nVWgvsW9iPXiPQn/3dbR
	feVTGkO1oQ==
Cc: poky@yoctoproject.org
Subject: Re: lib-sdl issue with qemu
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
X-List-Received-Date: Fri, 27 May 2016 09:07:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable



> Gesendet: Freitag, 27=2E Mai 2016 um 10:40 Uhr
> Von: "Joshua G Lock" <joshua=2Eg=2Elock@linux=2Eintel=2Ecom>
> An: star@gmx=2Eli, poky@yoctoproject=2Eorg
> Betreff: Re: [poky] [POKY] lib-sdl issue with qemu
>
> On Fri, 2016-05-27 at 07:23 +0200, star@gmx=2Eli wrote:
> > Tried a "bitbake core-image-minimal" with included xilinx meta-layer
> > and machine "qemuzynq"=2E
> > I get the above mentioned error on an Ubuntu 1604, but with already
> > installed libsdl=2E
> >=20
> > See below:=C2=A0
> >=20
> > =2E=2E=2E
> > >=20
> > > ERROR: User requested feature sdl
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0configure was not able to =
find it=2E
> > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Install SDL devel
> > >=20
> > > WARNING: exit code 1 from a shell command=2E
> > > ERROR: Function failed: do_configure (log file is located at
> > > /home/user/yocto_qemu/tmp/work/x86_64-linux/qemu-native/2=2E4=2E0-
> > > r1/temp/log=2Edo_configure=2E3236)
> > ERROR: Task 72 (virtual:native:/home/user/yocto/poky/meta/recipes-
> > devtools/qemu/qemu_2=2E4=2E0=2Ebb, do_configure) failed with exit code=
 '1'
> >=20
>=20
> Which version of the poky are you using?
>=20
> There was a change to stop relying on the host to provide an SDL
> implementation and instead we build sdl-native, this change is
> available in the krogoth release (2=2E1) and has been backported to
> jethro (available in 2=2E0=2E2) and fido (available in 1=2E8=2E2)=2E
>=20
> However if you have an old local=2Econf you'll need to remove the
> ASSUME_PROVIDED entry for sdl-native=2E
>=20
> Regards,
>=20
> Joshua
>=20

Thanks Joshua and Zhenhua
I am on Jethro, I assume 2=2E0=2E1=2E How can I check this?=20
I cloned Jethro a couple of weeks ago=2E No hint in the poky folder=2E

user@VB:~/yocto/poky$ git status
On branch jethro
Your branch is up-to-date with 'origin/jethro'=2E

But this is obviously referring to my clone, not to the original repo?!?


So am I right, I have to do both: update to 2=2E0=2E2 and remove the ASSUM=
E_PROVIDED (which is indeed included in my local=2Econf)?
Regards
Arno

