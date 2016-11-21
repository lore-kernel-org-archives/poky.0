Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D320CE00A92; Mon, 21 Nov 2016 01:09:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2051AE00A1E
	for <poky@yoctoproject.org>; Mon, 21 Nov 2016 01:09:31 -0800 (PST)
Received: by mail-vk0-f44.google.com with SMTP id 137so214111182vkl.0
	for <poky@yoctoproject.org>; Mon, 21 Nov 2016 01:09:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=F8OoWAtLqMsbaMbvxoZALKO+kCpinuz2k0jR1PXIAMA=;
	b=M+rl6jRq9p8K+MqA8ExKqw7B5ixH507YUjWlaU45DJn951Mv4OR83AvfNkIuXuRL1m
	Yx3LNgblv4XdWNvXm5qL4rqcCN462eDWy6uG0gegRSf8zyWmfy7GjTD5QaD+o+KeRw3V
	FWFBx240yk8h6yE2ZvLvk9mtdt7gbt6cltj1/r3MhRYNvO0MBvvwgLkqJJcl4T+JhiBR
	5QFNpy1lZjQvI0hmEuZsM0YKF+ymIcqyqjZ5fuW1EP4ceW7L9hyOaqo+6hYRiKlUMrRC
	DHM3RW1tX+m/Pf/N8dffJdfeV/gWEseGSXb9unsLtCnxit/WwVjdlsBLRksTcazu6Y2n
	SZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=F8OoWAtLqMsbaMbvxoZALKO+kCpinuz2k0jR1PXIAMA=;
	b=GW6oTjEu/N0vI+ivTd471/FAXfNuDVxGDWpLvBhPig94HL7DNuPR7BIMwqLe5JjzZz
	wwQiMqSMUQu16Pc5ikY057v1di/sSBtueGsI+o8k9ykClL651SF2l3YwkyvxSzen87pE
	PActwTAxrVE1H+yX7Eil/eA4Nj0K2CET8DYtIvGqBFeWSxs5sODSkPOrRiH6WiBCNM9m
	soT6sFR7pi9TbGyPPj8ZCEGuL6Jl9S31rJzQ+fgZwKh0IPYaaTopy1cIELACJB5XhpGg
	HoqnQ21hm1cjVIw0MCM++R3GG7l9CLGkPhpRt5yjdCUqg9J0UqZsgxRv6xBMcwnEG3Gi
	jgGw==
X-Gm-Message-State: AKaTC00bP1mU5zdD5CcPdFqCjTZ7Exsa3EkzGH4NPqavgxO3PLx8wB0tRqgh1IZOi3pLoPuKUBRKhWJcb2pp6g==
X-Received: by 10.31.157.205 with SMTP id g196mr6258056vke.91.1479719370825;
	Mon, 21 Nov 2016 01:09:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Mon, 21 Nov 2016 01:09:30 -0800 (PST)
In-Reply-To: <CADnUhn11R=rt0Jek1NYr_bXJv6esQWeyNvc70yc+d=KfL3pTdw@mail.gmail.com>
References: <CADnUhn11R=rt0Jek1NYr_bXJv6esQWeyNvc70yc+d=KfL3pTdw@mail.gmail.com>
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Mon, 21 Nov 2016 11:09:30 +0200
Message-ID: <CADnUhn0XT1PWosxyAenqd82SYKuQi1HQ3y2wokbpbsuUCVWtCQ@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: usb modeswitch problem with udev
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
X-List-Received-Date: Mon, 21 Nov 2016 09:09:34 -0000
Content-Type: multipart/alternative; boundary=001a1142cf6e7726340541cc0363

--001a1142cf6e7726340541cc0363
Content-Type: text/plain; charset=UTF-8

Hi!
As a reference, if anyone hits this subject:
For the firstly there was wrong information regarding udev versions -
actually udevd versions. Both versions were coming from systemd
installations, so their versions are 219 (fido) / 229 (krogoth). Also
/sbin/udevd is the same binary as /lib/systemd/systemd-udevd. Also there is
no such parameter as monitor in systemd version of udevd. I don't know why
running udevd manually from terminal kind of helped as in fact it did not
if I started it automatically as service (so, another systemd-udevd).
However, realizing that udevd = systemd-udevd gave me correct search
criteria. Similar problem - explanation can be found from
https://bbs.archlinux.org/viewtopic.php?id=199075. So, in short: version of
usb_modeswitch (2.2.0) meta-openembedded currently provides is not
compatible with systemd-udevd version of krogoth and newer.

2016-11-15 12:35 GMT+02:00 matti kaasinen <matti.kaasinen@gmail.com>:

> I have experienced strange behavior how usb_modeswitch works together with
> udev in poky/krogoth installation. In fido they worked fine. Usb_modeswitch
> is same in both installations (2.2.0), udev version different
> udev_182/udev_3.1.5.
>
> 1) I don't get logging even though I enable it from
> /etc/usb_modeswitch.conf
> 2) Modem shows only as mass storage - no mode switching happens
>
> I inserted printouts to /lib/udev/usb_modeswitch script. From these prints
> it shows up that plugging modem triggers:
> exec /usr/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0
>
> command twice, but no switching happens.
>
> 3) If I run modeswitch command (below) manually switching happens
> usb_modeswitch -I -W -c /usr/share/usb_modeswitch/12d1\:14fe
> --default-vendor 12d1 --default-product 14fe --target-product 1506
>
> 4) I run
> udevd monitor
> in order to debug udev events => usb_modeswitch logging starts working and
> also switching starts working.
>
> Debug printing from /lib/udev/usb_modeswitch script shows that operation
> starts identically. However, now also switching proceeds:
>
> after
> exec /usr/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0
>
> commands script gets called twice with parameters below
> --driver-bind /devices/platform/ocp/47400000.usb/47401c00.usb/
> musb-hdrc.1.auto/usb2/2-1/2-1:1.0 12d1/1506/102
>
> following sequence gets repeated twice
> --- START ---
> script gets called three times with following parameters (? = 0,1 and 2)
> --symlink-name /devices/platform/ocp/47400000.usb/47401c00.usb/
> musb-hdrc.1.auto/usb2/2-1/2-1:1.3/ttyUSB2/tty/ttyUSB? 12d1 1506
>
> Which resulted following commands (x and y altering):
> exec usb_modeswitch_dispatcher --symlink-name /devices/platform/ocp/
> 47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:
> 1.x/ttyUSB0/tty/ttyUSBy
> --- STOP ---
>
> It seems that usb_modeswitch_dispatcher discusses to some udev daemon that
> does not start by default in standard installation of poky/krogoth.
> What daemon could this be? Naturally I could bring up this udevd monitor,
> but I would prefer using the correct one if that exists.
>
> Thanks,
> Matti
>

--001a1142cf6e7726340541cc0363
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi!<br></div>As a reference, if anyone hits=
 this subject:<br></div>For the firstly there was wrong information regardi=
ng udev versions - actually udevd versions. Both versions were coming from =
systemd installations, so their versions are 219 (fido) / 229 (krogoth). Al=
so /sbin/udevd is the same binary as /lib/systemd/systemd-udevd. Also there=
 is no such parameter as monitor in systemd version of udevd. I don&#39;t k=
now why running udevd manually from terminal kind of helped as in fact it d=
id not if I started it automatically as service (so, another systemd-udevd)=
. However, realizing that udevd =3D systemd-udevd gave me correct search cr=
iteria. Similar problem - explanation can be found from <a href=3D"https://=
bbs.archlinux.org/viewtopic.php?id=3D199075">https://bbs.archlinux.org/view=
topic.php?id=3D199075</a>. So, in short: version of usb_modeswitch (2.2.0) =
meta-openembedded currently provides is not compatible with systemd-udevd v=
ersion of krogoth and newer.<br></div></div><div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">2016-11-15 12:35 GMT+02:00 matti kaasinen <span =
dir=3D"ltr">&lt;<a href=3D"mailto:matti.kaasinen@gmail.com" target=3D"_blan=
k">matti.kaasinen@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>=
I have experienced strange behavior how usb_modeswitch works together with =
udev in poky/krogoth installation. In fido they worked fine. Usb_modeswitch=
 is same in both installations (2.2.0), udev version different udev_182/ude=
v_3.1.5.<br><br></div>1) I don&#39;t get logging even though I enable it fr=
om /etc/usb_modeswitch.conf<br></div>2) Modem shows only as mass storage - =
no mode switching happens<br></div><br></div>I inserted printouts to /lib/u=
dev/usb_modeswitch script. From these prints it shows up that plugging mode=
m triggers:<br>exec /usr/sbin/usb_modeswitch_<wbr>dispatcher --switch-mode =
/2-1:1.0<br><br></div>command twice, but no switching happens.<br><br>3) If=
 I run modeswitch command (below) manually switching happens<br>usb_modeswi=
tch -I -W -c /usr/share/usb_modeswitch/<wbr>12d1\:14fe=C2=A0 --default-vend=
or 12d1 --default-product 14fe --target-product 1506<br><br></div>4) I run =
<br>udevd monitor <br></div>in order to debug udev events =3D&gt; usb_modes=
witch logging starts working and also switching starts working.<br><br></di=
v>Debug printing from /lib/udev/usb_modeswitch script shows that operation =
starts identically. However, now also switching proceeds:<br><br></div>afte=
r<br>exec /usr/sbin/usb_modeswitch_<wbr>dispatcher --switch-mode /2-1:1.0<b=
r><br></div>commands script gets called twice with parameters below<br>--dr=
iver-bind /devices/platform/ocp/<wbr>47400000.usb/47401c00.usb/<wbr>musb-hd=
rc.1.auto/usb2/2-1/2-1:<wbr>1.0 12d1/1506/102<br><br></div><div><div>follow=
ing sequence gets repeated twice<br></div>--- START ---<br></div>script get=
s called three times with following parameters (? =3D 0,1 and 2)<br><div><d=
iv><div><div><div><div><div>--symlink-name /devices/platform/ocp/<wbr>47400=
000.usb/47401c00.usb/<wbr>musb-hdrc.1.auto/usb2/2-1/2-1:<wbr>1.3/ttyUSB2/tt=
y/ttyUSB? 12d1 1506<br><br></div><div>Which resulted following commands (x =
and y altering):<br>exec usb_modeswitch_dispatcher --symlink-name /devices/=
platform/ocp/<wbr>47400000.usb/47401c00.usb/<wbr>musb-hdrc.1.auto/usb2/2-1/=
2-1:<wbr>1.x/ttyUSB0/tty/ttyUSBy<br>--- STOP ---<br><br></div><div>It seems=
 that usb_modeswitch_dispatcher discusses to some udev daemon that does not=
 start by default in standard installation of poky/krogoth.<br></div><div>W=
hat daemon could this be? Naturally I could bring up this udevd monitor, bu=
t I would prefer using the correct one if that exists.<br><br></div><div>Th=
anks,<br></div><div>Matti<br></div></div></div></div></div></div></div></di=
v>
</blockquote></div><br></div>

--001a1142cf6e7726340541cc0363--
