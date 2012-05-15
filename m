Return-Path: <petertornel@yahoo.com>
Received: from nm22-vm3.bullet.mail.ne1.yahoo.com
	(nm22-vm3.bullet.mail.ne1.yahoo.com [98.138.91.152])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 59460E006DA
	for <poky@yoctoproject.org>; Tue, 15 May 2012 09:03:17 -0700 (PDT)
Received: from [98.138.90.48] by nm22.bullet.mail.ne1.yahoo.com with NNFMP;
	15 May 2012 16:03:16 -0000
Received: from [98.138.89.165] by tm1.bullet.mail.ne1.yahoo.com with NNFMP;
	15 May 2012 16:03:16 -0000
Received: from [127.0.0.1] by omp1021.mail.ne1.yahoo.com with NNFMP;
	15 May 2012 16:03:16 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 727919.96528.bm@omp1021.mail.ne1.yahoo.com
Received: (qmail 75579 invoked by uid 60001); 15 May 2012 16:03:15 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1337097795; bh=p2cpgGXpc3w/QZHKwpmysI8k8x4mbNqMx+gc0P+FfEQ=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=4URJMAlbbd4kXLNl0XwEfJGqoZcUDx3bfTdurE1E7+oBvIwwsMGGbkHMSucKX5543ZAnnRxWN8Ls8hhFryuMES9VgzvEImMEegUMln0aja2lyWnejz4o2VO/m6i6bkDvGUUibaBqZQnITxAZVOHN4wpaKjxOLyVSlqfgI/lLuA8=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.com;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type;
	b=qY7syyRJocISg3Tbwbbd8JKyvphyi7WOaZD7CbsUWVjkHCAKkhH5pTVjaPVgcgPHjwREAhKNRK8VNpQ95TwVsY2gf8F87jginKAEu1kF+H4GXygzoQW6PFYisI8A6XlENVshAMeZhsxiCs1YmK8gaxND0iYe7nItjmo9Rkw+3Vk=;
X-YMail-OSG: KSzb3XAVM1mkw290KW8aeIEuGQ5sZ0ph9IDaXBl5gRa3NXB
	OEfnJZCTizt.nr6QcNciCC1L3OqiqjfjrJ7xOSiEkLDuj1mSmC64zvBptA0I
	YM2bERkIanF.x65OaucdwMCWSCds9DkuPxNuNZxMkf1wfU8s97.mJa1Q9uvy
	ZppflVPyvKgwmsDvL3sRPrDjtJb0dOfBGSCz8ZEisggfzOu0c1skoR0rEDYy
	R1H58Io6U_yaEkTO82ZwZ6zXBRhW_fDM460bvfKOaAxdoU3jQkoHNyncJSgg
	tFrS0qoH3AuMJd60yQDjM7EXYo3d_9x8iwwYCdA0IGxspdITMhIv6RBeoVkA
	Q4NCsXxnJGDvfS3fzKOo8v6IL.OSC0ATucewx9TIlwA5Kqnsn9cDJnzCUkj1 lN6u_
Received: from [108.25.187.176] by web122202.mail.ne1.yahoo.com via HTTP;
	Tue, 15 May 2012 09:03:14 PDT
X-Mailer: YahooMailWebService/0.8.118.349524
Message-ID: <1337097794.60983.YahooMailNeo@web122202.mail.ne1.yahoo.com>
Date: Tue, 15 May 2012 09:03:14 -0700 (PDT)
From: Peter Tornel <petertornel@yahoo.com>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: building packages in a general recipe without adding to rootfs
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tornel <petertornel@yahoo.com>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 15 May 2012 16:03:17 -0000
Content-Type: multipart/alternative;
	boundary="251260810-729646408-1337097794=:60983"

--251260810-729646408-1337097794=:60983
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hello Group,=0A=0AI want a single recipe that contains some core packages t=
o install in rootfs using IMAGE_INSTALL, and I also want to specify a numbe=
r of packages to be built in deploy/rpm so I can install them later to my h=
ard drive without having them included in my rootfs. =0A=0A=0AWhat's the be=
st way to specify the additional packages in my recipe without having them =
included in my rootfs?=0A=0AI believe EXTRA_IMAGEDEPENDS gets the job done,=
 but it's intended to be used to specify a dependency, which isn't the case=
 here.=A0=A0 Is there something else I should be using?=0A=0A=0A=0ARegards,=
=0A=0APete

--251260810-729646408-1337097794=:60983
Content-Type: text/html; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:ti=
mes new roman, new york, times, serif;font-size:12pt"><div>Hello Group,</di=
v><div><br></div><div>I want a single recipe that contains some core packag=
es to install in rootfs using IMAGE_INSTALL, and I also want to specify a n=
umber of packages to be built in deploy/rpm so I can install them later to =
my hard drive without having them included in my rootfs. <br></div><div><br=
></div><div>What's the best way to specify the additional packages in my re=
cipe without having them included in my rootfs?</div><div><br></div><div>I =
believe EXTRA_IMAGEDEPENDS gets the job done, but it's intended to be used =
to specify a dependency, which isn't the case here.&nbsp;&nbsp; Is there so=
mething else I should be using?<br></div><div><br></div><div><br></div><div=
>Regards,</div><div><br></div><div>Pete<br><br></div></div></body></html>

--251260810-729646408-1337097794=:60983--
