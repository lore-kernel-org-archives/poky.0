Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEBDDE00EE9; Tue, 29 Sep 2015 10:18:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81BB2E00C13;
	Tue, 29 Sep 2015 10:18:08 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so11913470pac.2;
	Tue, 29 Sep 2015 10:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8sWMKGviPTn2SX8n6KAZKKhb6ur7rWrLMSGH42NOT0g=;
	b=dL5WoQ//oUUD52Joxid9+SrLmtsqkSCWRkt5bDCfWObvQ53FYpFnpFQOiFvaug5BSW
	zFRf6PmbAFlL8/9zl/uuFEQ+fEUK9VjOiTG+4mb3/+fKoXONkwy0M5Db3cAD6Fb5BWo9
	p2QsIZCruGPoWsYpTRSAcXg65xzW+5A2d2xuwz5v0hJOA4PHnPBIyrjUyc2sOoKny/fo
	ReZqSQxU6ayM653ksUTZY4Y+Jt/sh2Mn9W6XDzErHslcZupzALA5N8PRPZI9eyasZb7O
	sCyMvSiLopw9rDGPXpfBQm6BlICRKKq0/4eKJzjDHcFtt8vGR13iIqDsP+Wd8u2jZyKR
	qYCA==
X-Received: by 10.69.3.228 with SMTP id bz4mr34729153pbd.79.1443547087756;
	Tue, 29 Sep 2015 10:18:07 -0700 (PDT)
Received: from [192.168.0.4] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85]) by smtp.gmail.com with ESMTPSA id
	on5sm13631598pbb.65.2015.09.29.10.18.04
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 29 Sep 2015 10:18:07 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJTo0LaV3Bp_PPKcxNmooADC8XPza5A2Pt8rFpY5GZw5sgUEEg@mail.gmail.com>
Date: Tue, 29 Sep 2015 10:18:00 -0700
Message-Id: <4867265E-255E-4F6A-9657-BD390A127625@gmail.com>
References: <1443519723-30931-1-git-send-email-kexin.hao@windriver.com>
	<CAJTo0LaV3Bp_PPKcxNmooADC8XPza5A2Pt8rFpY5GZw5sgUEEg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3094)
Cc: Poky Project <poky@yoctoproject.org>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH] meta-yocto-bsp: bump to linux-yocto 4.1 for the non-x86 BSPs
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
X-List-Received-Date: Tue, 29 Sep 2015 17:18:11 -0000
X-Groupsio-MsgNum: 10127
Content-Type: multipart/signed;
	boundary="Apple-Mail=_6962655A-526A-4DC3-8E02-0FCF2D15F627";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_6962655A-526A-4DC3-8E02-0FCF2D15F627
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F9A1DB73-4C50-4C50-B91F-1C394CB11FAA"

--Apple-Mail=_F9A1DB73-4C50-4C50-B91F-1C394CB11FAA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Sep 29, 2015, at 3:01 AM, Burton, Ross <ross.burton@intel.com> =
wrote:
>=20
>=20
> On 29 September 2015 at 10:42, Kevin Hao <kexin.hao@windriver.com =
<mailto:kexin.hao@windriver.com>> wrote:
> Boot test for all these boards.
>=20
> If I build the edgerouter kernel I get this warning:
>=20
> WARNING: Section not found: .comment
>=20
> I've no idea if this is bad or not=E2=80=A6

functionally no harm since its the strip code which is complaining about =
it so this section was going to go away from kernel image anyway
it seems we must have included .comment in KERNEL_IMAGE_STRIP

Now the more curious case would be if its being stripped by kernel =
build, we explicitly disabled kernel build stripping the kernel image
and here it might be thats not happening with new kernel. That aspect =
could be investigated.

>=20
> Ross
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky


--Apple-Mail=_F9A1DB73-4C50-4C50-B91F-1C394CB11FAA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 29, 2015, at 3:01 AM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div class=3D"gmail_extra"><br class=3D""><div =
class=3D"gmail_quote">On 29 September 2015 at 10:42, Kevin Hao <span =
dir=3D"ltr" class=3D"">&lt;<a href=3D"mailto:kexin.hao@windriver.com" =
target=3D"_blank" class=3D"">kexin.hao@windriver.com</a>&gt;</span> =
wrote:<br class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div id=3D":4sr" class=3D"" =
style=3D"overflow:hidden">Boot test for all these boards.<br =
class=3D""></div></blockquote></div><br class=3D"">If I build the =
edgerouter kernel I get this warning:</div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">WARNING: Section not found: =
.comment<br class=3D""></div><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">I've no idea if this is bad =
or not=E2=80=A6</div></div></div></blockquote><div><br =
class=3D""></div><div>functionally no harm since its the strip code =
which is complaining about it so this section was going to go away from =
kernel image anyway</div><div>it seems we must have included .comment =
in&nbsp;<span style=3D"white-space: pre-wrap; widows: 1;" =
class=3D"">KERNEL_IMAGE_STRIP</span></div><div><span style=3D"white-space:=
 pre-wrap; widows: 1;" class=3D""><br class=3D""></span></div><div =
style=3D"widows: 1;"><span style=3D"white-space: pre-wrap;" class=3D"">Now=
 the more curious case would be if its being stripped by kernel build, =
we explicitly disabled kernel build stripping the kernel =
image</span></div><div style=3D"widows: 1;"><span style=3D"white-space: =
pre-wrap;" class=3D"">and here it might be thats not happening with new =
kernel. That aspect could be investigated.</span></div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><br =
class=3D""></div><div class=3D"gmail_extra">Ross</div></div>
-- <br class=3D"">_______________________________________________<br =
class=3D"">poky mailing list<br class=3D""><a =
href=3D"mailto:poky@yoctoproject.org" =
class=3D"">poky@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/poky<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_F9A1DB73-4C50-4C50-B91F-1C394CB11FAA--

--Apple-Mail=_6962655A-526A-4DC3-8E02-0FCF2D15F627
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlYKx8sACgkQuwUzVZGdMxQJVgCeP4J3Zo7o+9wQjJl6DqGH/5H3
TxoAn3IRlFgxSLYbQUcxPkH7pIJkVS3s
=GiTs
-----END PGP SIGNATURE-----

--Apple-Mail=_6962655A-526A-4DC3-8E02-0FCF2D15F627--
