Return-Path: <matti.kaasinen@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B02BE00953; Tue, 15 Nov 2016 02:35:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matti.kaasinen[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.45 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f45.google.com (mail-vk0-f45.google.com
	[209.85.213.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CFD7E0080A
	for <poky@yoctoproject.org>; Tue, 15 Nov 2016 02:35:35 -0800 (PST)
Received: by mail-vk0-f45.google.com with SMTP id p9so85535917vkd.3
	for <poky@yoctoproject.org>; Tue, 15 Nov 2016 02:35:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=al1slYZp/HXFjT1X5T0N3dlic9QEaSE0MgSoUy4vrck=;
	b=wdoDXRduhU1NNT6enEGZQKaQusLXkEmug0ONO7mMX49JYMKKugKaDA+kVpUh8FB6KE
	Vx9ITdTzINtorQZd1o5mB1b/hf3yMypOsF1vpYyBcIdyXEnA8J5v0TiWfFK+VMpoOIja
	xvzXcxGzoD2BaMXazVArGBMc9HGoQU8l3e5memU+/rhsdDz2OreMqyyhLXUVU/GlGAd4
	X+Eyqp9ZvWDFzc3lRrl9L4jazTqvDP9Vi/PEQObOhFWwQ4Xz7UdgYjrXCK9XzUNvoYmJ
	jssDwnc3TFjTI1dJ/ZfhKUE5asyEyBTTW6+xwjgTu/dV59/Wj70NTybPNVLN9SdwsvQ2
	kssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=al1slYZp/HXFjT1X5T0N3dlic9QEaSE0MgSoUy4vrck=;
	b=XkHvAg4Qnz6EeZaaY9QuaudrNKk+7udg5mwWzNEM5PHMkSQtxJf8glRxGhu7XNBPfh
	D2zO98+2g7amSSXh4X0wpS7ZMoEgMNK23iqAoHa9SoAwtVSsDqYTEP15CNKyBurwYsAm
	T+eozcKxNjkwr5QXl2PZJWWdOAsuYFYc0cMpexSvfTnVzIKyLplETPBDX0xYqfNRebvi
	6NisHhej3gneTsbYWcnhmYUBdf51b/IS/2cmpEtBMU04U+zHayQyehwWkQw/AAqUACd5
	Qak+A3MpWX5f4OsUNoeuodK/vGwG/Ge+TSu+G8HYWhIPAiQ2WVw6HgWW39eJZRBVCeDS
	hWaw==
X-Gm-Message-State: ABUngveonGKKnEIKWLVvLaBBl0Ey9c3qob47uV6npXyUF2nyfzI8+gAACkaYgfku6q/BEhTYcCSv2rjub0pMQg==
X-Received: by 10.31.157.205 with SMTP id g196mr12927677vke.91.1479206134673; 
	Tue, 15 Nov 2016 02:35:34 -0800 (PST)
MIME-Version: 1.0
Received: by 10.103.146.208 with HTTP; Tue, 15 Nov 2016 02:35:34 -0800 (PST)
From: matti kaasinen <matti.kaasinen@gmail.com>
Date: Tue, 15 Nov 2016 12:35:34 +0200
Message-ID: <CADnUhn11R=rt0Jek1NYr_bXJv6esQWeyNvc70yc+d=KfL3pTdw@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: usb modeswitch problem with udev
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
X-List-Received-Date: Tue, 15 Nov 2016 10:35:37 -0000
Content-Type: multipart/alternative; boundary=001a1142cf6e34f6e60541548409

--001a1142cf6e34f6e60541548409
Content-Type: text/plain; charset=UTF-8

I have experienced strange behavior how usb_modeswitch works together with
udev in poky/krogoth installation. In fido they worked fine. Usb_modeswitch
is same in both installations (2.2.0), udev version different
udev_182/udev_3.1.5.

1) I don't get logging even though I enable it from /etc/usb_modeswitch.conf
2) Modem shows only as mass storage - no mode switching happens

I inserted printouts to /lib/udev/usb_modeswitch script. From these prints
it shows up that plugging modem triggers:
exec /usr/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0

command twice, but no switching happens.

3) If I run modeswitch command (below) manually switching happens
usb_modeswitch -I -W -c /usr/share/usb_modeswitch/12d1\:14fe
--default-vendor 12d1 --default-product 14fe --target-product 1506

4) I run
udevd monitor
in order to debug udev events => usb_modeswitch logging starts working and
also switching starts working.

Debug printing from /lib/udev/usb_modeswitch script shows that operation
starts identically. However, now also switching proceeds:

after
exec /usr/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0

commands script gets called twice with parameters below
--driver-bind
/devices/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.0
12d1/1506/102

following sequence gets repeated twice
--- START ---
script gets called three times with following parameters (? = 0,1 and 2)
--symlink-name
/devices/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.3/ttyUSB2/tty/ttyUSB?
12d1 1506

Which resulted following commands (x and y altering):
exec usb_modeswitch_dispatcher --symlink-name
/devices/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.x/ttyUSB0/tty/ttyUSBy
--- STOP ---

It seems that usb_modeswitch_dispatcher discusses to some udev daemon that
does not start by default in standard installation of poky/krogoth.
What daemon could this be? Naturally I could bring up this udevd monitor,
but I would prefer using the correct one if that exists.

Thanks,
Matti

--001a1142cf6e34f6e60541548409
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div><div><div><div>I h=
ave experienced strange behavior how usb_modeswitch works together with ude=
v in poky/krogoth installation. In fido they worked fine. Usb_modeswitch is=
 same in both installations (2.2.0), udev version different udev_182/udev_3=
.1.5.<br><br></div>1) I don&#39;t get logging even though I enable it from =
/etc/usb_modeswitch.conf<br></div>2) Modem shows only as mass storage - no =
mode switching happens<br></div><br></div>I inserted printouts to /lib/udev=
/usb_modeswitch script. From these prints it shows up that plugging modem t=
riggers:<br>exec /usr/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0=
<br><br></div>command twice, but no switching happens.<br><br>3) If I run m=
odeswitch command (below) manually switching happens<br>usb_modeswitch -I -=
W -c /usr/share/usb_modeswitch/12d1\:14fe=C2=A0 --default-vendor 12d1 --def=
ault-product 14fe --target-product 1506<br><br></div>4) I run <br>udevd mon=
itor <br></div>in order to debug udev events =3D&gt; usb_modeswitch logging=
 starts working and also switching starts working.<br><br></div>Debug print=
ing from /lib/udev/usb_modeswitch script shows that operation starts identi=
cally. However, now also switching proceeds:<br><br></div>after<br>exec /us=
r/sbin/usb_modeswitch_dispatcher --switch-mode /2-1:1.0<br><br></div>comman=
ds script gets called twice with parameters below<br>--driver-bind /devices=
/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc.1.auto/usb2/2-1/2-1:1.0 1=
2d1/1506/102<br><br></div><div><div>following sequence gets repeated twice<=
br></div>--- START ---<br></div>script gets called three times with followi=
ng parameters (? =3D 0,1 and 2)<br><div><div><div><div><div><div><div>--sym=
link-name /devices/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc.1.auto/=
usb2/2-1/2-1:1.3/ttyUSB2/tty/ttyUSB? 12d1 1506<br><br></div><div>Which resu=
lted following commands (x and y altering):<br>exec usb_modeswitch_dispatch=
er --symlink-name /devices/platform/ocp/47400000.usb/47401c00.usb/musb-hdrc=
.1.auto/usb2/2-1/2-1:1.x/ttyUSB0/tty/ttyUSBy<br>--- STOP ---<br><br></div><=
div>It seems that usb_modeswitch_dispatcher discusses to some udev daemon t=
hat does not start by default in standard installation of poky/krogoth.<br>=
</div><div>What daemon could this be? Naturally I could bring up this udevd=
 monitor, but I would prefer using the correct one if that exists.<br><br><=
/div><div>Thanks,<br></div><div>Matti<br></div></div></div></div></div></di=
v></div></div>

--001a1142cf6e34f6e60541548409--
