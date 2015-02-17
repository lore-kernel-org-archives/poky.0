Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3FD9E00825; Tue, 17 Feb 2015 03:13:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88373E00800;
	Tue, 17 Feb 2015 03:13:26 -0800 (PST)
Received: by mail-ig0-f170.google.com with SMTP id l13so39193124iga.1;
	Tue, 17 Feb 2015 03:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PeCRGGFAneR56UDdvjgWVt8a8yXIreDtW4Ar2hNUvQc=;
	b=gacSBpCU7bTZvg+Nlt9nb6qvExLgwy1b48b5vtX8Xh2uPLXe29aevzRFBMmvV6t0PV
	0mANUG4rgKEKLXXIwQ26+YNB3PGBMlPZLuwebMAFP3/tMtOyhQr+1JwNB3Bb391l6uG9
	C2KAtYyq6b1lcjLAGvvj4CA/e+rM9xhGotu0d3LV0MSYCvLrHfa2Jmaz2h7iO/imEac/
	dBKHzRJhLU3jthBuevRbOPPbZ6xo8hOG45DZ754czi1VroDN13FfwSPFBKAm4oYuu9/X
	ePwA34VHzPIeBqVF2KVQ328J9oIL1+fVsUhCd27svZLFXZl2CtRHeeASPuA5uQDXm4sN
	tzbw==
MIME-Version: 1.0
X-Received: by 10.107.130.196 with SMTP id m65mr35331524ioi.19.1424171606414; 
	Tue, 17 Feb 2015 03:13:26 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Tue, 17 Feb 2015 03:13:26 -0800 (PST)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1C4ED3BD@POCITMSEXMB06.LntUniverse.com>
References: <CALTPfpHrYrWhPje7ippkoTUwPgBAuzmhcTKWa0Knec-iSLtgBQ@mail.gmail.com>
	<CALTPfpHqiwCiCHkvw1DM=mpTwtts2z83sNLhRN5_h6Ycv5O5Tw@mail.gmail.com>
	<9BACABF0C6B14A4D8C33B42A795119BE1C4ED3BD@POCITMSEXMB06.LntUniverse.com>
Date: Tue, 17 Feb 2015 16:43:26 +0530
Message-ID: <CALTPfpGwva0CZeTO9aKUhsxNJtqPoN3Qaw0f_Y+WMV7Kw=KtxQ@mail.gmail.com>
From: Priya Agarwal <priyaiitmandi@gmail.com>
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnttechservices.com>
Cc: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Error while trying to enable selinux support in custom image
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
X-List-Received-Date: Tue, 17 Feb 2015 11:13:29 -0000
Content-Type: multipart/alternative; boundary=001a113ed158b31cba050f46ca1d

--001a113ed158b31cba050f46ca1d
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Unable to find networking-layer. Is this same as meta-networking layer?


On Tue, Feb 17, 2015 at 4:30 PM, Navani Kamal Srivastava <
NAVANI.Srivastava@lnttechservices.com> wrote:

>  Adding following lines in bblayer.conf file of your build should help!!
>
>
>
> File Path: build/conf/bblayer.conf
>
>
>
> BBLAYERS ?=3D " \
>
> =E2=80=9CPath To meta-python layer=E2=80=9D \
>
> =E2=80=9CPath to networking-layer=E2=80=9D \
>
>   "
>
>
>
> Cheers!!
>
> Navani Srivastava
>
>
> _________________________________________________________________________=
__________
>
> *From:* poky-bounces@yoctoproject.org [mailto:
> poky-bounces@yoctoproject.org] *On Behalf Of *Priya Agarwal
> *Sent:* Tuesday, February 17, 2015 4:21 PM
> *To:* poky@yoctoproject.org; yocto-builds@yoctoproject.org
> *Subject:* [poky] Fwd: Error while trying to enable selinux support in
> custom image
>
>
>
>
>
> Hi,
>
> I want to add SELinux support in my custom imgae I am building for
> Freescale's T4240QDS Machine.
>
> I followed the steps given in FAQ section included in meta-selinux
> directory.
>
> However I am getting this error. How do I remove this.
>
> ERROR: Layer 'selinux' depends on layer 'meta-python', but this layer is
> not enabled in your configuration
> ERROR: Layer 'selinux' depends on layer 'networking-layer', but this laye=
r
> is not enabled in your configuration
>
> I need to do this urgently.
>
> Thank You.
>
> Regards
>
>
>
> *L&T Technology Services Ltd*
>
> www.LntTechservices.com <http://www.lnttechservices.com/>
>
> This Email may contain confidential or privileged information for the
> intended recipient (s). If you are not the intended recipient, please do
> not use or disseminate the information, notify the sender and delete it
> from your system.
>

--001a113ed158b31cba050f46ca1d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Unable to find networking-layer. Is this same as meta-netw=
orking layer?<br><br></div><div class=3D"gmail_extra"><br><div class=3D"gma=
il_quote">On Tue, Feb 17, 2015 at 4:30 PM, Navani Kamal Srivastava <span di=
r=3D"ltr">&lt;<a href=3D"mailto:NAVANI.Srivastava@lnttechservices.com" targ=
et=3D"_blank">NAVANI.Srivastava@lnttechservices.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex">





<div link=3D"#0563C1" vlink=3D"#954F72" lang=3D"EN-US">
<div><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Adding following lines in bblayer.con=
f file of your build should help!!<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">File Path: build/conf/bblayer.conf<u>=
</u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">BBLAYERS ?=3D &quot; \<u></u><u></u><=
/span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=E2=80=9CPath To meta-python layer=E2=
=80=9D \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=E2=80=9CPath to networking-layer=E2=
=80=9D \<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=C2=A0 &quot;<u></u><u></u></span></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
</span><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&=
quot;Calibri&quot;,sans-serif;color:#44546a">Cheers!!<u></u><u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Navani Srivastava<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">_____________________________________=
______________________________________________<u></u><u></u></span></p><spa=
n class=3D"">
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> <a href=3D"mailto:poky-bounces=
@yoctoproject.org" target=3D"_blank">poky-bounces@yoctoproject.org</a> [mai=
lto:<a href=3D"mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky=
-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Priya Agarwal<br>
<b>Sent:</b> Tuesday, February 17, 2015 4:21 PM<br>
<b>To:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@=
yoctoproject.org</a>; <a href=3D"mailto:yocto-builds@yoctoproject.org" targ=
et=3D"_blank">yocto-builds@yoctoproject.org</a><br>
<b>Subject:</b> [poky] Fwd: Error while trying to enable selinux support in=
 custom image<u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</span><div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<u></u><u></u></p>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal">I want to add SELinux support in my custom imgae I a=
m building for Freescale&#39;s T4240QDS Machine.<u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I followed the steps =
given in FAQ section included in meta-selinux directory.<u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">However I am getting =
this error. How do I remove this.
<br>
<br>
ERROR: Layer &#39;selinux&#39; depends on layer &#39;meta-python&#39;, but =
this layer is not enabled in your configuration<br>
ERROR: Layer &#39;selinux&#39; depends on layer &#39;networking-layer&#39;,=
 but this layer is not enabled in your configuration<u></u><u></u></p>
</div></div></div><div><div class=3D"h5">
<p class=3D"MsoNormal">I need to do this urgently.<u></u><u></u></p>
</div></div></div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Thank You.<u></u><u><=
/u></p>
</div>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong></p><span class=3D"">
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</span></div>

</blockquote></div><br></div>

--001a113ed158b31cba050f46ca1d--
