Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B2C3E00D92; Tue,  1 Sep 2015 05:11:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297CFE00B4D
	for <poky@yoctoproject.org>; Tue,  1 Sep 2015 05:11:02 -0700 (PDT)
Received: by qgp105 with SMTP id 105so38983914qgp.0
	for <poky@yoctoproject.org>; Tue, 01 Sep 2015 05:11:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Rx46y9Ifzyy2MymCa7Az98216S//xGO82RaC545Lse0=;
	b=FTBhbjF9UpcIhWAGzuESDWbATnnSU4sz92pV2zB/jVbrXClfYUJm9L2s1ltIo5J0RG
	1tFmOKMxndwSr5xs9yBXnpl7DaNKxZlZNVlEOjnr6rId+DOO+wYp3RVJjeUHv6ixpp3r
	EJYrUlgl/IViCaucwiA4wgEmfWvjEClTDWwHTttzWmQI8GP+psUC9m6FdDT/yDkfoYxj
	9qL56DA2c6hffDbAjEQudeJzl2+UZ50s7eUtMC9zqtYYVB/Yne0VWmGvYAeZF0LJ193h
	bp1pgcnubvEQmKwedOAgF06Nrbgc0S/+ZekPquwNXRrHvEkGps881IDceGifX52oPsk5
	v61g==
MIME-Version: 1.0
X-Received: by 10.140.202.10 with SMTP id x10mr22534464qha.0.1441109460639;
	Tue, 01 Sep 2015 05:11:00 -0700 (PDT)
Received: by 10.55.149.133 with HTTP; Tue, 1 Sep 2015 05:11:00 -0700 (PDT)
In-Reply-To: <CADnUhn0wkWC07QsR6D7T=maQLJWkXOyGVf=YWhGjaQ7oy=qvOA@mail.gmail.com>
References: <CADnUhn2yeyhj=-tQY89yFwAsCq6ARO0qshOjqV3X=NT8rrs0=w@mail.gmail.com>
	<CADnUhn0wkWC07QsR6D7T=maQLJWkXOyGVf=YWhGjaQ7oy=qvOA@mail.gmail.com>
Date: Tue, 1 Sep 2015 15:11:00 +0300
Message-ID: <CADnUhn0CHpiFkL+rfWOB1HhAr8ofQFx_3RZfiv_dfjgXYij_sA@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: Postinstall script problem
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
X-List-Received-Date: Tue, 01 Sep 2015 12:11:05 -0000
Content-Type: multipart/alternative; boundary=001a114324d47c32af051eae71de

--001a114324d47c32af051eae71de
Content-Type: text/plain; charset=UTF-8

I got it working - at least enough. So, pkg_postinst_{PN} branch during
image creation seems to work
by using following statement for line append:

echo "new line" >> $D/${sysconfdir}/inittab

I did not find reason why "first time boot" insertion did not work.
However, as I told before, it works when running opkg install manually. I
don't need that "first time boot" operation for this as these two cases
work.
Cheers,
Matti

2015-09-01 9:40 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:

> I'm using Poky fido branch.
> Thanks,
> Matti
>
> 2015-08-31 16:31 GMT+03:00 matti kaasinen <matti.kaasinen@gmail.com>:
>
>> Hi!
>>
>> How is pkg_postinstall_${PN} supposed to work, when package is coming
>> from imgage? My experience is that it is not executed at all.
>>
>> In classical openembedded it was run for the first time when image
>> started. Is this changed in Poky/yocto based operation?
>>
>> However, if I install same package using opkg, everything works fine.
>> What I try to do is appending a line to /etc/inittab. I also tried to do it
>> during image creation (to ${STAGING_DIR_HOST}${sysconfdir}/inittab), but
>> results are the same - only the file created by systemv-inittab gets
>> created with nothing extra.
>>
>> I guess this is a pretty common problem, so that there could be some neat
>> solution for this. Is anyone familiar with this issue?
>>
>> My postinst script is as follows (really working with opkg)
>> pkg_postinst_${PN} () {
>> #!/bin/sh -e
>>
>> if [ "x$D" = "x" ]; then
>>     # run this on the target
>>     echo '########################################'
>>     echo '## Installing starter for daemontools ##'
>>     echo '########################################'
>>
>>     if [ -z "$(grep -e svscanboot ${sysconfdir}/inittab)" ] ; then
>>         echo "SV:12345:respawn:${bindir}/svscanboot" >>
>> ${sysconfdir}/inittab
>>     fi
>> fi
>> }
>>
>> Thanks,
>> Matti
>>
>
>

--001a114324d47c32af051eae71de
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I got it working - at least enough. So, pkg_postinst_=
{PN} branch during image creation seems to work<br>by using following state=
ment for line append:<br><br>echo &quot;new line&quot; &gt;&gt; $D/${syscon=
fdir}/inittab<br><br></div><div>I did not find reason why &quot;first time =
boot&quot; insertion did not work. However, as I told before, it works when=
 running opkg install manually. I don&#39;t need that &quot;first time boot=
&quot; operation for this as these two cases work.<br></div><div>Cheers,<br=
></div><div>Matti<br></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2015-09-01 9:40 GMT+03:00 matti kaasinen <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blank">matti.ka=
asinen@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr"><div><div>I&#39;m using Poky fido branch.<br></div>Thanks,<br></di=
v>Matti<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmai=
l_extra"><br><div class=3D"gmail_quote">2015-08-31 16:31 GMT+03:00 matti ka=
asinen <span dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" ta=
rget=3D"_blank">matti.kaasinen@gmail.com</a>&gt;</span>:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div><div><div>Hi!<br>=
<br></div>How is pkg_postinstall_${PN} supposed to work, when package is co=
ming from imgage? My experience is that it is not executed at all.<br><br><=
/div>In classical openembedded it was run for the first time when image sta=
rted. Is this changed in Poky/yocto based operation?<br><br></div>However, =
if I install same package using opkg, everything works fine. What I try to =
do is appending a line to /etc/inittab. I also tried to do it during image =
creation (to ${STAGING_DIR_HOST}${sysconfdir}/inittab), but results are the=
 same - only the file created by systemv-inittab gets created with nothing =
extra.<br><br></div>I guess this is a pretty common problem, so that there =
could be some neat solution for this. Is anyone familiar with this issue?<b=
r><br></div>My postinst script is as follows (really working with opkg)<br>=
pkg_postinst_${PN} () {<br>#!/bin/sh -e<br><br>if [ &quot;x$D&quot; =3D &qu=
ot;x&quot; ]; then<br>=C2=A0=C2=A0=C2=A0 # run this on the target<br>=C2=A0=
=C2=A0=C2=A0 echo &#39;########################################&#39;<br>=C2=
=A0=C2=A0=C2=A0 echo &#39;## Installing starter for daemontools ##&#39;<br>=
=C2=A0=C2=A0=C2=A0 echo &#39;########################################&#39;<=
br><br>=C2=A0=C2=A0=C2=A0 if [ -z &quot;$(grep -e svscanboot ${sysconfdir}/=
inittab)&quot; ] ; then<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 echo =
&quot;SV:12345:respawn:${bindir}/svscanboot&quot; &gt;&gt; ${sysconfdir}/in=
ittab<br>=C2=A0=C2=A0=C2=A0 fi<br>fi<br>}<br><br></div>Thanks,<br></div>Mat=
ti<br></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--001a114324d47c32af051eae71de--
