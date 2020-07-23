Received: from mail.optimcloud.com (mail.optimcloud.com [46.23.86.243])
 by mx.groups.io with SMTP id smtpd.web11.440.1595518206266909409
 for <poky@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 08:30:07 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: optimcloud.com, ip: 46.23.86.243, mailfrom: yocto@optimcloud.com)
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by mail.optimcloud.com (Postfix) with ESMTPA id 3BD9C8002B
	for <poky@lists.yoctoproject.org>; Thu, 23 Jul 2020 15:29:59 +0000 (UTC)
MIME-Version: 1.0
Date: Thu, 23 Jul 2020 22:29:59 +0700
From: "Yocto" <yocto@optimcloud.com>
To: poky@lists.yoctoproject.org
Subject: Re: [poky] How to install Compiler g++ in Yocto #yocto #g++ #gcc #compiler #package #library #poky
In-Reply-To: <10615.1595517378175516979@lists.yoctoproject.org>
References: <20200723150108.th2jqqu3injaegzq@qschulz>
 <10615.1595517378175516979@lists.yoctoproject.org>
Message-ID: <247d18d63487dd6346c030162c354afe@optimcloud.com>
X-Sender: yocto@optimcloud.com
Authentication-Results: mail.optimcloud.com;
	auth=pass smtp.auth=yocto@optimcloud.com smtp.mailfrom=yocto@optimcloud.com
X-Spamd-Bar: /
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: quoted-printable

On 2020-07-23 22:16, kar_947@hotmail.fr wrote:
> Hi,
>=20
> First of all, thank you for sending me vid=C3=A9os, i really need to lea=
rn
> more about Yocto Project.
>=20
> Then, you told me that it's better for me to use a "normal"
> distribution but i dont have the choice. I actually use an IMX6 SMARC
> com board and the distribution is a Yocto.
> So i can't use an other distribution.

you could always build a package feed specific to your needs, then rpm=20
install application...
its not that hard, we also had to do this for various things.
then you have your own custom distro like ubuntu / debian etc etc

https://wiki.yoctoproject.org/wiki/TipsAndTricks/EnablingAPackageFeed

>=20
> Moreover, why the yocto Project is not like Ubuntu? I mean, it"s
> REALLY easier to install package with a command like "apt-get install
> mypackage". Why Yocto complicates the thing?
> In yocto project, i need to modify some files and recompile all the
> BSP and Kernel Yocto, just for adding a package like "g++"?
>=20
> Best regards
>=20
