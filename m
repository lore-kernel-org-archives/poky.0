Return-Path: <Andreas.Zoufal@ait.ac.at>
Received: from mail.ait.ac.at (arcss01.ait.ac.at [62.218.164.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FC79E013C9
	for <poky@yoctoproject.org>; Sat, 10 Mar 2012 02:44:36 -0800 (PST)
Received: from Mailbox.arc.local ([169.254.1.118]) by S0HCN2.arc.local ([::1])
	with mapi; Sat, 10 Mar 2012 11:44:35 +0100
From: Zoufal Andreas <Andreas.Zoufal@ait.ac.at>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
Date: Sat, 10 Mar 2012 11:42:37 +0100
Thread-Topic: [poky] How to create a PREMIRROR
Thread-Index: Acz+DY864iiv4QwMSgW3/r/MHHB8XgAnPOLZ
Message-ID: <9F69795E29C890408AC2DAF646C89BB379D106EC5B@MAILBOX.arc.local>
References: <9F69795E29C890408AC2DAF646C89BB379D1059697@MAILBOX.arc.local>,
	<4F5A288D.9010900@windriver.com>
In-Reply-To: <4F5A288D.9010900@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: How to create a PREMIRROR
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
X-List-Received-Date: Sat, 10 Mar 2012 10:44:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Thx Mark, I will try it. One more question: which files are really required=
 for the mirrors?
Only the archives or the "done" files, patch files, patch result files etc?
Andi

________________________________________
From: poky-bounces@yoctoproject.org [poky-bounces@yoctoproject.org] On Beha=
lf Of Mark Hatle [mark.hatle@windriver.com]
Sent: Friday, March 09, 2012 4:58 PM
To: poky@yoctoproject.org
Subject: Re: [poky] How to create a PREMIRROR

On 3/9/12 9:40 AM, Zoufal Andreas wrote:
> Hello everybody,
>
> I am new here in this mailing list. We are starting to use Yocto/Poky for=
 an
> embedded project, and we have the need to collect all source code in our =
SVN
> repository for the case internet is not available. I think using PREMIRRO=
RS (and
> SSTATE_MIRRORS for speedup) is the right way?
>
> How to create and maintain a local PREMIRRROR? What is the best practice?=
 I=92m
> pretty sure this is not the first time for this question, so can you give=
 me
> some hints for a good documentation, or advices?

For the premirrors, what I've done is start a new build directory.. setup m=
y
DL_DIR to some place "safe".. and then do a "bitbake -c fetchall world"

I then export my DL_DIR for others via NFS, FTP, HTTPS, etc... whatever is
appropriate within your organization -- then everyone else uses PREMIRROR
settings to use that DL_DIR.

For the SSTATE_MIRROR, you can do something similar... but sstate_mirroring=
 is
really only useful if everyone is on a fast link.  In my experience anythin=
g
slower then a gigabit link and it's usually (not always) faster to compile =
stuff
locally, then pull from an sstate_mirror.

(Also if you have problems with an sstate_mirror, please let us know.  Not =
a lot
of people are using them yet -- I had some issues w/ 1.1 and the sstate bei=
ng
used by multiple userids, but I believe these are resolved in newer version=
s.)

--Mark

> Thanx, Andi
>
> *ANDREAS ZOUFAL
> *Engineer
> Safety & Security Department
> Video and Security Technology
>
> **
>
> *AIT Austrian Institute of Technology GmbH
> *Donau-City-Stra=DFe 1 | 1220 Vienna | Austria
> T +43(0) 50550-4266 | F +43(0) 50550-4150
> _andreas.zoufal@ait.ac.at <mailto:andreas.zoufal@ait.ac.at>_|
> _http://www.ait.ac.at__
> _
> FN: 115980 i HG Wien | UID: ATU14703506
> This email and any attachments thereto, is intended only for use by the
> addressee(s) named herein and may contain legally privileged and/or confi=
dential
> information. If you are not the intended recipient, please notify the sen=
der by
> return e-mail or by telephone and delete this message from your system an=
d any
> printout thereof. Any unauthorized use, reproduction, or dissemination of=
 this
> message is strictly prohibited. Please note that e-mails are susceptible =
to
> change. AIT Austrian Institute of Technology GmbH shall not be liable for=
 the
> improper or incomplete transmission of the information contained in this
> communication, nor shall it be liable for any delay in its receipt.
>
>
>
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

_______________________________________________
poky mailing list
poky@yoctoproject.org
https://lists.yoctoproject.org/listinfo/poky

