Return-Path: <praveen.vatt@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A985E00A73; Tue, 27 Oct 2015 05:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (praveen.vatt[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64A32E009B8
	for <poky@yoctoproject.org>; Tue, 27 Oct 2015 05:38:15 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so158227797wic.1
	for <poky@yoctoproject.org>; Tue, 27 Oct 2015 05:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=+pLpp1KJPLs16ttHZ8bLUe7+TmoAmrN/L6iJFLtrKJ8=;
	b=Cp25aBVIkFNSIgHtGoQsUaRL7J7ElsNWfyb4tZGC6hcbI4Dw5qmmo1I+vNqPpCYJi6
	GPNe7EO5cQ3Q0tra+OZF1QmERGGZqP+JAG9D38bltmZVJawZFFhu3jRAkxt/uHrnQRHN
	OHTe7ktGggv3RS0kG0jhLUWzRsTxKitPAGgMeRLoBsNwVzsIfcBQhokGf+PUXn8ui3n3
	cB7Ipfb9TXu6YTcdVjkLZUjN74zDCnQR4YvRWk9vlwlHXDANVcyIXbGJHMCHFyXpUBo5
	G2HF77fut242DMvlKuHVUzy61d2ZbA4SBVqUxclne83g2wYYHBGKHQJ4QyTJaQlaj74s
	UwVg==
MIME-Version: 1.0
X-Received: by 10.180.108.129 with SMTP id hk1mr26121105wib.52.1445949494904; 
	Tue, 27 Oct 2015 05:38:14 -0700 (PDT)
Received: by 10.194.105.6 with HTTP; Tue, 27 Oct 2015 05:38:14 -0700 (PDT)
In-Reply-To: <mailman.11.1445886001.15247.poky@yoctoproject.org>
References: <mailman.11.1445886001.15247.poky@yoctoproject.org>
Date: Tue, 27 Oct 2015 18:08:14 +0530
Message-ID: <CA+pXca3UGeNboRiTN6-GQ5z_JbQG7YPt8PDHmCdW91ThxBqV7A@mail.gmail.com>
From: praveen vattipalli <praveen.vatt@gmail.com>
To: poky@yoctoproject.org, gary@mlbassoc.com
Subject: Re: poky Digest, Vol 61, Issue 9
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
X-List-Received-Date: Tue, 27 Oct 2015 12:38:19 -0000
Content-Type: multipart/alternative; boundary=e89a8f3bb04f01d0570523155aca

--e89a8f3bb04f01d0570523155aca
Content-Type: text/plain; charset=UTF-8

Thanks a lot Gary.

> Hi All,
>
> I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8
board(beagle bone).  Actually i need *pam_succeed_if.so* in final rootfs,
but it is missing.
> *pam_succeed_if.so* is getting compiled and copied to
sysroot/beaglebone/lib/
security directory but missing in final rootfs/lib/security directory. Do i
need to change any
> configuration to get it copied to rootfs.

>>The various pam libraries and plugins are all packaged separately.

>>You'll need to add 'pam-plugin-succeed-if' to your image

i have added pam-plugin-succeed-if' to my  image and it worked.

Thanks.

On Tue, Oct 27, 2015 at 12:30 AM, <poky-request@yoctoproject.org> wrote:

> Send poky mailing list submissions to
>         poky@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/poky
> or, via email, send a message with subject or body 'help' to
>         poky-request@yoctoproject.org
>
> You can reach the person managing the list at
>         poky-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of poky digest..."
>
>
> Today's Topics:
>
>    1. libpam issue (praveen vattipalli)
>    2. Re: libpam issue (Gary Thomas)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 26 Oct 2015 18:25:51 +0530
> From: praveen vattipalli <praveen.vatt@gmail.com>
> To: poky@yoctoproject.org, yocto <yocto@yoctoproject.org>
> Subject: [poky] libpam issue
> Message-ID:
>         <
> CA+pXca1P5rGW7yB5+tQ9a6_9n2c39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi All,
>
> I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8
> board(beagle bone).  Actually i need *pam_succeed_if.so* in final rootfs,
> but it is missing. *pam_succeed_if.so* is getting compiled and copied to
> sysroot/beaglebone/lib/security directory but missing in final
> rootfs/lib/security directory. Do i need to change any configuration to get
> it copied to rootfs.
>
> Thanks in Advance.
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/poky/attachments/20151026/147456cd/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Mon, 26 Oct 2015 07:05:33 -0600
> From: Gary Thomas <gary@mlbassoc.com>
> To: poky@yoctoproject.org
> Subject: Re: [poky] libpam issue
> Message-ID: <562E251D.7060303@mlbassoc.com>
> Content-Type: text/plain; charset=windows-1252; format=flowed
>
> On 2015-10-26 06:55, praveen vattipalli wrote:
> > Hi All,
> >
> > I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8
> board(beagle bone).  Actually i need *pam_succeed_if.so* in final rootfs,
> but it is missing.
> > *pam_succeed_if.so* is getting compiled and copied to
> sysroot/beaglebone/lib/security directory but missing in final
> rootfs/lib/security directory. Do i need to change any
> > configuration to get it copied to rootfs.
>
> The various pam libraries and plugins are all packaged separately.
>
> You'll need to add 'pam-plugin-succeed-if' to your image
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
>
> ------------------------------
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>
>
> End of poky Digest, Vol 61, Issue 9
> ***********************************
>

--e89a8f3bb04f01d0570523155aca
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thanks a lot Gary.<br><br>&gt; Hi All,<br>
&gt;<br>
&gt; I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for=20
cortexa8 board(beagle bone).=C2=A0 Actually i need *pam_succeed_if.so* in=
=20
final rootfs, but it is missing.<br>
&gt; *pam_succeed_if.so* is getting compiled and copied to sysroot/beaglebo=
ne/lib/<div id=3D":1jd" class=3D"">security directory but missing in final =
rootfs/lib/security directory. Do i need to change any<br>
&gt; configuration to get it copied to rootfs.<br>
<br>
&gt;&gt;The various pam libraries and plugins are all packaged separately.<=
br>
<br>
&gt;&gt;You&#39;ll need to add &#39;pam-plugin-succeed-if&#39; to your imag=
e</div><br></div>i have added pam-plugin-succeed-if&#39; to my=C2=A0 image =
and it worked.<br><br></div>Thanks. <br><div><div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Tue, Oct 27, 2015 at 12:30 AM,  <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:poky-request@yoctoproject.org" target=3D"_=
blank">poky-request@yoctoproject.org</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">Send poky mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky@yoctoproject.org">poky@y=
octoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/poky" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/listinfo/poky</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky-request@yoctoproject.org=
">poky-request@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:poky-owner@yoctoproject.org">=
poky-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of poky digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. libpam issue (praveen vattipalli)<br>
=C2=A0 =C2=A02. Re: libpam issue (Gary Thomas)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 26 Oct 2015 18:25:51 +0530<br>
From: praveen vattipalli &lt;<a href=3D"mailto:praveen.vatt@gmail.com">prav=
een.vatt@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a>, yoc=
to &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>=
&gt;<br>
Subject: [poky] libpam issue<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;<a href=3D"mailto:CA%2BpXca1P5rGW7yB5%2BtQ9=
a6_9n2c39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com">CA+pXca1P5rGW7yB5+tQ9a6_9n2c=
39UzrFgd5Q-h9Ftogp3UWtA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi All,<br>
<br>
I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8<br>
board(beagle bone).=C2=A0 Actually i need *pam_succeed_if.so* in final root=
fs,<br>
but it is missing. *pam_succeed_if.so* is getting compiled and copied to<br=
>
sysroot/beaglebone/lib/security directory but missing in final<br>
rootfs/lib/security directory. Do i need to change any configuration to get=
<br>
it copied to rootfs.<br>
<br>
Thanks in Advance.<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/poky/attachment=
s/20151026/147456cd/attachment-0001.html" rel=3D"noreferrer" target=3D"_bla=
nk">http://lists.yoctoproject.org/pipermail/poky/attachments/20151026/14745=
6cd/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 26 Oct 2015 07:05:33 -0600<br>
From: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.co=
m</a>&gt;<br>
To: <a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
Subject: Re: [poky] libpam issue<br>
Message-ID: &lt;<a href=3D"mailto:562E251D.7060303@mlbassoc.com">562E251D.7=
060303@mlbassoc.com</a>&gt;<br>
Content-Type: text/plain; charset=3Dwindows-1252; format=3Dflowed<br>
<br>
On 2015-10-26 06:55, praveen vattipalli wrote:<br>
&gt; Hi All,<br>
&gt;<br>
&gt; I am building libpam in yocto-1.6.1 on ubuntu12.04 64bit for cortexa8 =
board(beagle bone).=C2=A0 Actually i need *pam_succeed_if.so* in final root=
fs, but it is missing.<br>
&gt; *pam_succeed_if.so* is getting compiled and copied to sysroot/beaglebo=
ne/lib/security directory but missing in final rootfs/lib/security director=
y. Do i need to change any<br>
&gt; configuration to get it copied to rootfs.<br>
<br>
The various pam libraries and plugins are all packaged separately.<br>
<br>
You&#39;ll need to add &#39;pam-plugin-succeed-if&#39; to your image<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
------------------------------------------------------------<br>
Gary Thomas=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=
=C2=A0 Consulting for the<br>
MLB Associates=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=
=A0 Embedded world<br>
------------------------------------------------------------<br>
<br>
<br>
------------------------------<br>
<br>
--<br>
_______________________________________________<br>
poky mailing list<br>
<a href=3D"mailto:poky@yoctoproject.org">poky@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/poky" rel=3D"noreferrer"=
 target=3D"_blank">https://lists.yoctoproject.org/listinfo/poky</a><br>
<br>
<br>
End of poky Digest, Vol 61, Issue 9<br>
***********************************<br>
</font></span></blockquote></div><br></div></div></div></div>

--e89a8f3bb04f01d0570523155aca--
