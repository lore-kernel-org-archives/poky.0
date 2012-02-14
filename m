Return-Path: <kpa_info@yahoo.fr>
Received: from nm4-vm0.bullet.mail.ird.yahoo.com
	(nm4-vm0.bullet.mail.ird.yahoo.com [77.238.189.211])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 80CA6E0136A
	for <poky@yoctoproject.org>; Tue, 14 Feb 2012 00:46:29 -0800 (PST)
Received: from [77.238.189.56] by nm4.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 08:46:28 -0000
Received: from [212.82.108.243] by tm9.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 08:46:28 -0000
Received: from [127.0.0.1] by omp1008.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 08:46:28 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 443968.97606.bm@omp1008.mail.ird.yahoo.com
Received: (qmail 19690 invoked by uid 60001); 14 Feb 2012 08:46:28 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1329209188; bh=Hwz5CdxRCpwpluxEZuticUZ3QiBCH2pQXS2aA/HHf4s=;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=J7lNodTgY8M/7Dj8z4xnjvUokjCwsbGa6Ew7yr+6qErx8b+BoNyNwadASt/ZCWLO5gKxdlSP4hKLtpqgkftOV+nrIqRDsU61LHFPH8rQYOqY70p0gRV1p0COb1R15zH9CC2opmawgUYQXIXuZXqXxg9QyxkC6MD5f4FPCCpZ1So=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Reply-To:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=1dpGJsTonvV+BHcacR4XJ60lwoaG6umPgm0KJX5AounSMuzA9dB+VyA3EIAOelrfLEX+Y3HNinJsHfs6fmNkQ2RdDzDBxUEJgcMrklWMd7s1w+Fq77cQPmwmd1ttdWgLSVzToOraS1sjU92VZ7sWsle0gdiz44BhlfADnTsnXos=;
X-YMail-OSG: oCJkUlYVM1nTiitPkREnqehY5ULW4XFKrsuEa.Hw.L1tibg
	1ylMhjW9ioFIj27nVdyrf5i2aGe0PVEU0KK2F4r1bH3Ycz3TGY0lcEsH7qxo
	Laf1K2pR6MMi0XlCiLLxgTPBLiHpm2WOjrcRi8x9LTF_yJKBLDUjZ20yjtiX
	X1TZ.fJVnUSW3Q.6frj0RVTn8k8_qgVlENK._umP_vMB4migbwCX1IaaVGXP
	WiieYthL6nLXlC8w19PI7BsR.NQN7ZPuHdm5YwTGEFoqr6QIzr1E7RLe1ZYc
	ccM6sabvDtUsvgvcnvndoKtKI0As.PbI4RMCFYAgUkNbAU8hE6GNrYV_myVO
	Eh3RjoCClpJPpMK5ihPoxejtf7NTY_lU.IgfAXDfHSrcVJas9U09smZghM6E F
Received: from [213.193.97.58] by web29001.mail.ird.yahoo.com via HTTP;
	Tue, 14 Feb 2012 08:46:28 GMT
X-Mailer: YahooMailWebService/0.8.116.338427
Message-ID: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
Date: Tue, 14 Feb 2012 08:46:28 +0000 (GMT)
From: Patrick <kpa_info@yahoo.fr>
To: "poky@yoctoproject.org" <poky@yoctoproject.org>
MIME-Version: 1.0
Subject: Building sysroot for SDK
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Patrick <kpa_info@yahoo.fr>
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Feb 2012 08:46:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Dear list,=0A=0AI use poky 6.0 to build a complete rootfs for my own target=
, it's working nicely !Now I would like to build a small application SDK fo=
r my system. =0A=0AI have red carefully the ADT manual and decided to build=
 a toolchain with meta-toolchain. The toolchain generated works properly bu=
t some libraries and headers are missing. =0AFor example my target use SQLi=
te built in the rootfs. The sqlite library and the headers files are missin=
g in the toolchain.=0A=0AI would like to know how to build the sysroot to a=
dd those files in the toolchain or how to add it directly to the toolchain.=
=0A=0AThanks in advance for any help=0A=0APatrick=0A

