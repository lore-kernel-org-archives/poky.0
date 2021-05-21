Received: from smtp29.i.mail.ru (smtp29.i.mail.ru [94.100.177.89])
 by mx.groups.io with SMTP id smtpd.web08.7162.1621591056081089618
 for <poky@lists.yoctoproject.org>;
 Fri, 21 May 2021 02:57:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mail.ru header.s=mail3 header.b=ZklZsbA6;
 spf=pass (domain: mail.ru, ip: 94.100.177.89, mailfrom: koolkhel@mail.ru)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru; s=mail3;
	h=To:Cc:Date:Message-Id:Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:From:From:Subject:Content-Type:Content-Transfer-Encoding:To:Cc; bh=jY6pEmXXI7zZVrDEpRsNz/CSvvZfOe+oDYwIaZFTzUo=;
	b=ZklZsbA6Ge8DScaAJPQiCs6Li3Ts/RZB7WAyuUsKtCrIw6g8N9zgbL4M5UuKzfVXGYa8gv1v9OymcxxQc1NMMKsMhnI9lnS9CbBi90NZJRTKkiX+yGfV7e9bUuZgtw8ydmoi1DSgGCV0sCt//k2Au1SVlWtXxWzkckbUOGhUAhM=;
Received: by smtp29.i.mail.ru with esmtpa (envelope-from <koolkhel@mail.ru>)
	id 1lk1uO-0006Pp-Ri; Fri, 21 May 2021 12:57:33 +0300
From: "Yury Lunyov" <koolkhel@mail.ru>
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.60.0.2.21\))
Subject: poky-tiny.conf kernel setting and non-x86 builds
Message-Id: <8FDD8642-BDAA-425F-98CA-0196F1BD6C50@mail.ru>
Date: Fri, 21 May 2021 12:57:31 +0300
Cc: Yury Lunev <koolkhel@mail.ru>
To: Yocto Poky <poky@lists.yoctoproject.org>
X-Mailer: Apple Mail (2.3654.60.0.2.21)
Authentication-Results: smtp29.i.mail.ru; auth=pass smtp.auth=koolkhel@mail.ru smtp.mailfrom=koolkhel@mail.ru
X-7564579A: 646B95376F6C166E
X-77F55803: 4F1203BC0FB41BD91B019B01C53E51AF9418A6087D01078917D63D7C0371164600894C459B0CD1B9B244E8CAE5A854997B1074615A8CE6CA89152597972BF60D7E11F6D7719F38BE
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE77EA152918BB9CDE0EA1F7E6F0F101C67BD4B6F7A4D31EC0BCC500DACC3FED6E28638F802B75D45FF8AA50765F7900637B43005D9966BC2348638F802B75D45FF36EB9D2243A4F8B5A6FCA7DBDB1FC311F39EFFDF887939037866D6147AF826D8CB696F08579BB064141936D4C4C6600B117882F4460429724CE54428C33FAD305F5C1EE8F4F765FC2F22DFD7D6B35478A471835C12D1D9774AD6D5ED66289B52BA9C0B312567BB23117882F44604297287769387670735209647ADFADE5905B1BDFBBEFFF4125B51D2E47CDBA5A96583BA9C0B312567BB2376E601842F6C81A19E625A9149C048EE140C956E756FBB7A0CB8D3112395442FD8FC6C240DEA7642DBF02ECDB25306B2B78CF848AE20165D0A6AB1C7CE11FEE3735DFC8FA7AC1207040F9FF01DFDA4A8C4224003CC836476EA7A3FFF5B025636E2021AF6380DFAD1A18204E546F3947CB11811A4A51E3B096D1867E19FE1407959CC434672EE6371089D37D7C0E48F6C8AA50765F7900637C970FD8DF19C51D2EFF80C71ABB335746BA297DBC24807EABDAD6C7F3747799A
X-C1DE0DAB: C20DE7B7AB408E4181F030C43753B8186998911F362727C414F749A5E30D975C5F9760D38AADC00CFAA744DFC64B7B3C6A865C070C9994FA9C2B6934AE262D3EE7EAB7254005DCED6D78939848480BC71E0A4E2319210D9B64D260DF9561598FCFFBF5018520E3984DBC578B17CB11D78E8E86DC7131B365E7726E8460B7C23C
X-C8649E89: 4E36BF7865823D7055A7F0CF078B5EC49A30900B95165D346B222596F62B8FA92FBFAD56014DD079F94280681370A82DF3CC40C2FC17C3FCBE56CE430CF5A1121D7E09C32AA3244C50599819D9D974E1D2BCEFD5131D7AD339C99C45E8D137E9729B2BEF169E0186
X-D57D3AED: 3ZO7eAau8CL7WIMRKs4sN3D3tLDjz0dLbV79QFUyzQ2Ujvy7cMT6pYYqY16iZVKkSc3dCLJ7zSJH7+u4VD18S7Vl4ZUrpaVfd2+vE6kuoey4m4VkSEu530nj6fImhcD4MUrOEAnl0W826KZ9Q+tr5ycPtXkTV4k65bRjmOUUP8cvGozZ33TWg5HZplvhhXbhDGzqmQDTd6OAevLeAnq3Ra9uf7zvY2zzsIhlcp/Y7m53TZgf2aB4JOg4gkr2bioj02rlJ4F8e+0mKQyzTtGiFw==
X-Mailru-Sender: 02FBD9029FE520B94397055C73A0D33052186DDB372219D828E0434C94650A3DA972A7C689D9B06B0FF44C620033B3FEFB559BB5D741EB96E617C770487730C1592DC799C9E688FC0DA7A0AF5A3A8387
X-Mras: Ok
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hey guys,

I was trying to build an initramfs image for Raspberry Pi using =
poky-tiny as DISTRO and meta-raspberrypi as BSP.

When trying to build core-image-minimal with this setup I got:
ERROR: Nothing PROVIDES 'virtual/kernel'
linux-dummy PROVIDES virtual/kernel but was skipped: =
PREFERRED_PROVIDER_virtual/kernel set to linux-yocto-tiny, not =
linux-dummy
linux-yocto-dev PROVIDES virtual/kernel but was skipped: incompatible =
with machine raspberrypi4 (not in COMPATIBLE_MACHINE)
linux-yocto-rt PROVIDES virtual/kernel but was skipped: incompatible =
with machine raspberrypi4 (not in COMPATIBLE_MACHINE)
linux-yocto-tiny PROVIDES virtual/kernel but was skipped: incompatible =
with machine raspberrypi4 (not in COMPATIBLE_MACHINE)
linux-yocto PROVIDES virtual/kernel but was skipped: incompatible with =
machine raspberrypi4 (not in COMPATIBLE_MACHINE)
linux-raspberrypi-dev PROVIDES virtual/kernel but was skipped: Skipping =
linux-raspberrypi-dev as it is not the preferred provider of =
virtual/kernel.
linux-raspberrypi-rt PROVIDES virtual/kernel but was skipped: Set =
PREFERRED_PROVIDER_virtual/kernel to linux-raspberrypi-rt to enable it
linux-raspberrypi-rt PROVIDES virtual/kernel but was skipped: Set =
PREFERRED_PROVIDER_virtual/kernel to linux-raspberrypi-rt to enable it
linux-raspberrypi PROVIDES virtual/kernel but was skipped: Set =
PREFERRED_PROVIDER_virtual/kernel to linux-raspberrypi to enable it
linux-raspberrypi PROVIDES virtual/kernel but was skipped: Set =
PREFERRED_PROVIDER_virtual/kernel to linux-raspberrypi to enable it
linux-raspberrypi PROVIDES virtual/kernel but was skipped: Set =
PREFERRED_PROVIDER_virtual/kernel to linux-raspberrypi to enable it

Even though in my local.conf I stated that:
PREFERRED_PROVIDER_virtual/kernel =3D "linux-raspberrypi"

I found out that in poky-tiny.conf the kernel is set via hard =
assignment:
PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
which overrode setting from machine support file from meta-raspberrypi:
PREFERRED_PROVIDER_virtual/kernel ??=3D "linux-raspberrypi"
because it was a weak assignment.

There is no way to override poky-tiny.conf setting from local.conf which =
is strange.

To get myself going I simply edited poky-conf.tiny to say
PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-tiny"

and the build went through.

I think that poky-tiny.conf should have this weak assignment by default =
so that it was buildable outside x86 world when MACHINE could be =
different and incompatible with linux-yocto-tiny.

Does it make sense to create a simple patch for this or such a change =
would break other setups?=
