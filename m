Return-Path: <ruica.cristina@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B3AAE00AE4; Mon, 26 Mar 2018 14:02:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ruica.cristina[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [66.163.190.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sonic307-11.consmr.mail.ne1.yahoo.com
	(sonic307-11.consmr.mail.ne1.yahoo.com [66.163.190.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67066E008E4
	for <poky@yoctoproject.org>; Mon, 26 Mar 2018 14:02:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1522098143; bh=Y9T6Fc1zYz04lqWxynbgT1qSa00240H0tILsREIcMgs=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=U2QiN+k5LmQqAdg1stfD+zEEEKB43NP46lT5xryQ3I6mWUbnJ14uWHfMfHZ56gJhcdF6rDVc8ml7B9quaTPsVbChs2RsgVqKCl2tzFuHHyLPULQ6wUozLmzsnoP2KBdCGT8fjjl/O4p5+yzikLL7W010EL1W53zZ9VAzA5/1CWweCyBL5cjejxqSRLuUae3hap4IaA6+e15fKsoX45wgbKyhAZu0ZkkZeXfs2+nB49bdihvhndQM32TA3sau7boMpxrb3MARr53ddmbVn5hbYr8qmdi45glZUmnejkBCgaYFxSW8aKyfAexuZuaxCniCrb+kQCEq6J8ttLj3c051WA==
X-YMail-OSG: QU.ptAMVM1lNdYH71r6_tz2X1qaMhXrvordW5gGcrRdMw3nZ4IkUrXP21ghp9BV
	7ejTA1doceFWPPOtg1FkTu_kKEqhsFPBCopjYvRZi96Y.0RTv7KK4IJzI_6n_W0_2UiHhVC63wLU
	f0m6z2aa0IovSrqrh4onZWZkn1deDc.PnetBwzQ.TxuIiM3gxghZcL9ASD5jvH16Lq2rV0AtyKxc
	yZ0cOsrJL0TosnCvXPxMlneo6rHGRISUw7VQIiNMeXHDldqLt5Xxe69mHc2971Oslrqi1xE8PBKY
	Ysyan1.xxbW5b0.PslbIs.lqwdjxhPvd5_e1Immg1oUMBzJ4pteYrwATaORf7ZcyvDagwLlDO9sq
	Yy2SRMjVDz0UcYQasAc4XdnMT9ZURhJWeMj1qHk0hv.OyLskYR_m_pX8KW4Y_DYQLvvI6On_pUqg
	RosXM0aOi29GlUb23AIBD5PwDnzI66X3DSJbD
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic307.consmr.mail.ne1.yahoo.com with HTTP;
	Mon, 26 Mar 2018 21:02:23 +0000
Date: Mon, 26 Mar 2018 21:02:21 +0000 (UTC)
From: Ruica Cristina <ruica.cristina@yahoo.com>
To: Soemoe Aung <soemoe.a@gmail.com>, "Burton, Ross" <ross.burton@intel.com>
Message-ID: <640929697.1301132.1522098141135@mail.yahoo.com>
In-Reply-To: <CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
References: <cover.1522085586.git.soemoe.a@gmail.com>
	<CAJTo0LZcVrPqJgEcZSobi-QO8YBg0GeDy94VwPFqV0MC4NDfuw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.11588 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181
	Safari/537.36
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PULL] *** Fix build issue with html5lib in bitbake ***
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
X-List-Received-Date: Mon, 26 Mar 2018 21:02:25 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1301131_430891045.1522098141134"

------=_Part_1301131_430891045.1522098141134
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 rocko..i tried to edit local.conf file and add=C2=A0
package_Classes ?=3D"package ipk"and it won't let me bitbake..i m kind of n=
ew in this and i don t know how to manage it..

    On Monday, March 26, 2018, 11:56:22 PM GMT+3, Burton, Ross <ross.burton=
@intel.com> wrote: =20
=20
 What branch is this meant to be applied to?

Also, as it's a bitbake change, this should go to the bitbake list.

On 26 March 2018 at 21:51, Soemoe Aung <soemoe.a@gmail.com> wrote:
> This fixes a build issue where bitbake won't run because of an issue with=
 one of the libraries it depends on.
>
> The following changes since commit ea6d21066a7cce2fef08ad66287170c5995bb1=
e2:
>
>=C2=A0 bitbake: bitbake-user-manual: Fixed porno hack for hello world exam=
ple (2018-01-17 22:32:46 +0000)
>
> are available in the Git repository at:
>
>=C2=A0 git://push.yoctoproject.org/poky-contrib saung/bitbake-html5lib
>
> Soemoe Aung (2):
>=C2=A0 fix build error in included html5lib in bitbake
>=C2=A0 fix html5lib fix to be the same as in the krogoth branch
>
>=C2=A0 bitbake/lib/bs4/builder/_html5lib.py | 17 ++++++++++++-----
>=C2=A0 1 file changed, 12 insertions(+), 5 deletions(-)
>
> --
> 2.17.0.rc0.231.g781580f067-goog
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
--=20
_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky
 =20

------=_Part_1301131_430891045.1522098141134
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"font-family:Helvetica Neue, Helvetic=
a, Arial, sans-serif;font-size:13px;"><div></div>
            <div>rocko..</div><div>i tried to edit local.conf file and add&=
nbsp;</div><div><br></div><div>package_Classes ?=3D"package ipk"</div><div>=
and it won't let me bitbake..i m kind of new in this and i don t know how t=
o manage it..</div><div><br></div><div><br></div>
           =20
            <div id=3D"yahoo_quoted_2649975875" class=3D"yahoo_quoted">
                <div style=3D"font-family:'Helvetica Neue', Helvetica, Aria=
l, sans-serif;font-size:13px;color:#26282a;">
                   =20
                    <div>
                        On Monday, March 26, 2018, 11:56:22 PM GMT+3, Burto=
n, Ross &lt;ross.burton@intel.com&gt; wrote:
                    </div>
                    <div><br></div>
                    <div><br></div>
                    <div><div dir=3D"ltr">What branch is this meant to be a=
pplied to?<br clear=3D"none"><br clear=3D"none">Also, as it's a bitbake cha=
nge, this should go to the bitbake list.<br clear=3D"none"><br clear=3D"non=
e">On 26 March 2018 at 21:51, Soemoe Aung &lt;<a shape=3D"rect" ymailto=3D"=
mailto:soemoe.a@gmail.com" href=3D"mailto:soemoe.a@gmail.com">soemoe.a@gmai=
l.com</a>&gt; wrote:<br clear=3D"none">&gt; This fixes a build issue where =
bitbake won't run because of an issue with one of the libraries it depends =
on.<br clear=3D"none">&gt;<br clear=3D"none">&gt; The following changes sin=
ce commit ea6d21066a7cce2fef08ad66287170c5995bb1e2:<br clear=3D"none">&gt;<=
br clear=3D"none">&gt;&nbsp;  bitbake: bitbake-user-manual: Fixed porno hac=
k for hello world example (2018-01-17 22:32:46 +0000)<br clear=3D"none">&gt=
;<br clear=3D"none">&gt; are available in the Git repository at:<br clear=
=3D"none">&gt;<br clear=3D"none">&gt;&nbsp;  git://push.yoctoproject.org/po=
ky-contrib saung/bitbake-html5lib<br clear=3D"none">&gt;<br clear=3D"none">=
&gt; Soemoe Aung (2):<br clear=3D"none">&gt;&nbsp;  fix build error in incl=
uded html5lib in bitbake<br clear=3D"none">&gt;&nbsp;  fix html5lib fix to =
be the same as in the krogoth branch<br clear=3D"none">&gt;<br clear=3D"non=
e">&gt;&nbsp; bitbake/lib/bs4/builder/_html5lib.py | 17 ++++++++++++-----<b=
r clear=3D"none">&gt;&nbsp; 1 file changed, 12 insertions(+), 5 deletions(-=
)<br clear=3D"none">&gt;<br clear=3D"none">&gt; --<br clear=3D"none">&gt; 2=
.17.0.rc0.231.g781580f067-goog<br clear=3D"none">&gt;<br clear=3D"none">&gt=
; --<br clear=3D"none">&gt; _______________________________________________=
<br clear=3D"none">&gt; poky mailing list<br clear=3D"none">&gt; <a shape=
=3D"rect" ymailto=3D"mailto:poky@yoctoproject.org" href=3D"mailto:poky@yoct=
oproject.org">poky@yoctoproject.org</a><br clear=3D"none">&gt; <a shape=3D"=
rect" href=3D"https://lists.yoctoproject.org/listinfo/poky" target=3D"_blan=
k">https://lists.yoctoproject.org/listinfo/poky</a><div class=3D"yqt0291816=
996" id=3D"yqtfd54151"><br clear=3D"none">-- <br clear=3D"none">___________=
____________________________________<br clear=3D"none">poky mailing list<br=
 clear=3D"none"><a shape=3D"rect" ymailto=3D"mailto:poky@yoctoproject.org" =
href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br clear=3D=
"none"><a shape=3D"rect" href=3D"https://lists.yoctoproject.org/listinfo/po=
ky" target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br c=
lear=3D"none"></div></div></div>
                </div>
            </div></div></body></html>

------=_Part_1301131_430891045.1522098141134--
