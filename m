Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BA25E00826; Tue, 17 Feb 2015 03:28:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HK_RANDOM_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.0 HK_RANDOM_FROM From username looks random
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (priyaiitmandi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9FC7CE0081E;
	Tue, 17 Feb 2015 03:28:01 -0800 (PST)
Received: by mail-ig0-f176.google.com with SMTP id hl2so29063863igb.3;
	Tue, 17 Feb 2015 03:28:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=nnnkMKn1lazebAiCl+Se30jo1bIkGwngcYTsCsLCQ5Q=;
	b=ZRYRyqZS14cI1ojc1xvekSn+XCqiH2Uv0iiEcXiegIg6ew3wURLSsjuqCBxHa/KGSF
	E99/VTvZ3g6KtEsHpnOwp/UOtcVO395lh4S5t9p2o8ZvIRu1Rpl/52j/PXB5g25rxaQc
	xSxVyGE5L3MmzLhGT2QlAsoKBk0ABe5MWIwl8lJfgcivpK1SafhzcY5V9RDZ3zX834f3
	LLgckwW1ytsOMgLMfLKAe9tFSrU6m5aF6HiafmYt8Y6M2j+1uzy3yezzf9kzk+1yWf98
	j6UJ9pJJrofUSHFTTeLH4eZWlmxXAIiwDhZNOE1/EOFeqJk6YbYRPT372XG0TQ0ru+e5
	E4Fg==
MIME-Version: 1.0
X-Received: by 10.43.74.201 with SMTP id yx9mr33838871icb.96.1424172481426;
	Tue, 17 Feb 2015 03:28:01 -0800 (PST)
Received: by 10.107.134.207 with HTTP; Tue, 17 Feb 2015 03:28:01 -0800 (PST)
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE1C4ED43E@POCITMSEXMB06.LntUniverse.com>
References: <CALTPfpHrYrWhPje7ippkoTUwPgBAuzmhcTKWa0Knec-iSLtgBQ@mail.gmail.com>
	<CALTPfpHqiwCiCHkvw1DM=mpTwtts2z83sNLhRN5_h6Ycv5O5Tw@mail.gmail.com>
	<9BACABF0C6B14A4D8C33B42A795119BE1C4ED3BD@POCITMSEXMB06.LntUniverse.com>
	<CALTPfpGwva0CZeTO9aKUhsxNJtqPoN3Qaw0f_Y+WMV7Kw=KtxQ@mail.gmail.com>
	<9BACABF0C6B14A4D8C33B42A795119BE1C4ED43E@POCITMSEXMB06.LntUniverse.com>
Date: Tue, 17 Feb 2015 16:58:01 +0530
Message-ID: <CALTPfpHAdQEVp43Xsz3saymkQDC-q7Cho-rF_AB77f0_iuXz2A@mail.gmail.com>
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
X-List-Received-Date: Tue, 17 Feb 2015 11:28:06 -0000
Content-Type: multipart/alternative; boundary=001a11c396cedabb03050f46fead

--001a11c396cedabb03050f46fead
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Actaully meta-networking is enabled in my configuration. But SELinux has
the following code in its layer.conf:

LAYERDEPENDS_selinux =3D " \
    core \
    meta-python \
    networking-layer \
    openembedded-layer \
    virtualization-layer \
"

If meta-networking and networking-layer are same should I modify this part
and change networking-layer to meta-networking?


On Tue, Feb 17, 2015 at 4:54 PM, Navani Kamal Srivastava <
NAVANI.Srivastava@lnttechservices.com> wrote:

>  I remember including meta-networking layer for SELinux support. I don=E2=
=80=99t
> know if you have created your own custom layer with name =E2=80=9Cnetwork=
ing layer=E2=80=9D
> or so. But you can search which layer contains data related SELinux
> support.
>
>
>
> Cheers!!
>
>
>
> Navani Srivastava
>
>
>
> *From:* Priya Agarwal [mailto:priyaiitmandi@gmail.com]
> *Sent:* Tuesday, February 17, 2015 4:43 PM
> *To:* Navani Kamal Srivastava
> *Cc:* poky@yoctoproject.org; yocto-builds@yoctoproject.org
> *Subject:* Re: [poky] Fwd: Error while trying to enable selinux support
> in custom image
>
>
>
> Unable to find networking-layer. Is this same as meta-networking layer?
>
>
>
> On Tue, Feb 17, 2015 at 4:30 PM, Navani Kamal Srivastava <
> NAVANI.Srivastava@lnttechservices.com> wrote:
>
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

--001a11c396cedabb03050f46fead
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Actaully meta-networking is enabled in my configurati=
on. But SELinux has the following code in its layer.conf:<br><br>LAYERDEPEN=
DS_selinux =3D &quot; \<br>=C2=A0=C2=A0=C2=A0 core \<br>=C2=A0=C2=A0=C2=A0 =
meta-python \<br>=C2=A0=C2=A0=C2=A0 networking-layer \<br>=C2=A0=C2=A0=C2=
=A0 openembedded-layer \<br>=C2=A0=C2=A0=C2=A0 virtualization-layer \<br>&q=
uot;<br><br></div>If meta-networking and networking-layer are same should I=
 modify this part and change networking-layer to meta-networking? <br><br><=
/div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Feb =
17, 2015 at 4:54 PM, Navani Kamal Srivastava <span dir=3D"ltr">&lt;<a href=
=3D"mailto:NAVANI.Srivastava@lnttechservices.com" target=3D"_blank">NAVANI.=
Srivastava@lnttechservices.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">





<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">I remember including meta-networking =
layer for SELinux support. I don=E2=80=99t know if you have created your ow=
n custom layer with name =E2=80=9Cnetworking layer=E2=80=9D or so. But
 you can search which layer contains data related SELinux support. <u></u><=
u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Cheers!!<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Navani Srivastava<u></u><u></u></span=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif"> Priya Agarwal [mailto:<a href=
=3D"mailto:priyaiitmandi@gmail.com" target=3D"_blank">priyaiitmandi@gmail.c=
om</a>]
<br>
<b>Sent:</b> Tuesday, February 17, 2015 4:43 PM<br>
<b>To:</b> Navani Kamal Srivastava<br>
<b>Cc:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@=
yoctoproject.org</a>; <a href=3D"mailto:yocto-builds@yoctoproject.org" targ=
et=3D"_blank">yocto-builds@yoctoproject.org</a><br>
<b>Subject:</b> Re: [poky] Fwd: Error while trying to enable selinux suppor=
t in custom image<u></u><u></u></span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Unable to find networ=
king-layer. Is this same as meta-networking layer?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On Tue, Feb 17, 2015 at 4:30 PM, Navani Kamal Srivas=
tava &lt;<a href=3D"mailto:NAVANI.Srivastava@lnttechservices.com" target=3D=
"_blank">NAVANI.Srivastava@lnttechservices.com</a>&gt; wrote:<u></u><u></u>=
</p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0i=
n 0in 0in 6.0pt;margin-left:4.8pt;margin-right:0in">
<div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Adding following lines in bblayer.con=
f file of your build should help!!</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">File Path: build/conf/bblayer.conf</s=
pan><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">BBLAYERS ?=3D &quot; \</span><u></u><=
u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=E2=80=9CPath To meta-python layer=E2=
=80=9D \</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=E2=80=9CPath to networking-layer=E2=
=80=9D \</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=C2=A0 &quot;</span><u></u><u></u></p=
>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">=C2=A0</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Cheers!!</span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">Navani Srivastava</span><u></u><u></u=
></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#44546a">_____________________________________=
______________________________________________</span><u></u><u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:11.0pt;=
font-family:&quot;Calibri&quot;,sans-serif">
<a href=3D"mailto:poky-bounces@yoctoproject.org" target=3D"_blank">poky-bou=
nces@yoctoproject.org</a> [mailto:<a href=3D"mailto:poky-bounces@yoctoproje=
ct.org" target=3D"_blank">poky-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>Priya Agarwal<br>
<b>Sent:</b> Tuesday, February 17, 2015 4:21 PM<br>
<b>To:</b> <a href=3D"mailto:poky@yoctoproject.org" target=3D"_blank">poky@=
yoctoproject.org</a>;
<a href=3D"mailto:yocto-builds@yoctoproject.org" target=3D"_blank">yocto-bu=
ilds@yoctoproject.org</a><br>
<b>Subject:</b> [poky] Fwd: Error while trying to enable selinux support in=
 custom image</span><u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Hi,<u></u><u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">I want to add SELinux support in my custom imgae I a=
m building for Freescale&#39;s T4240QDS Machine.<u></u><u></u></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I followed the steps =
given in FAQ section included in meta-selinux directory.<u></u><u></u></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">However I am getting =
this error. How do I remove this.
<br>
<br>
ERROR: Layer &#39;selinux&#39; depends on layer &#39;meta-python&#39;, but =
this layer is not enabled in your configuration<br>
ERROR: Layer &#39;selinux&#39; depends on layer &#39;networking-layer&#39;,=
 but this layer is not enabled in your configuration<u></u><u></u></p>
</div>
</div>
</div>
<div>
<div>
<p class=3D"MsoNormal">I need to do this urgently.<u></u><u></u></p>
</div>
</div>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Thank You.<u></u><u><=
/u></p>
</div>
<p class=3D"MsoNormal">Regards<u></u><u></u></p>
</div>
</div>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
</div>
</div>
<p><strong>L&amp;T Technology Services Ltd</strong><u></u><u></u></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a><u></u><u></u></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.<u></u><u></u></p>
</div>
</blockquote>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div></div></div><div><div class=3D"h5">
<p><strong>L&amp;T Technology Services Ltd</strong></p>
<p><a href=3D"http://www.lnttechservices.com/" target=3D"_blank">www.LntTec=
hservices.com</a></p>
<p>This Email may contain confidential or privileged information for the in=
tended recipient (s). If you are not the intended recipient, please do not =
use or disseminate the information, notify the sender and delete it from yo=
ur system.</p>
</div></div></div>

</blockquote></div><br></div>

--001a11c396cedabb03050f46fead--
