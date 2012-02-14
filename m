Return-Path: <kpa_info@yahoo.fr>
Received: from nm1-vm0.bullet.mail.ird.yahoo.com
	(nm1-vm0.bullet.mail.ird.yahoo.com [77.238.189.95])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id B74E4E0059B
	for <poky@yoctoproject.org>; Tue, 14 Feb 2012 02:12:04 -0800 (PST)
Received: from [77.238.189.231] by nm1.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:12:03 -0000
Received: from [212.82.109.128] by tm12.bullet.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:12:03 -0000
Received: from [127.0.0.1] by omp1020.mail.ird.yahoo.com with NNFMP;
	14 Feb 2012 10:12:03 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 393698.10740.bm@omp1020.mail.ird.yahoo.com
Received: (qmail 96980 invoked by uid 60001); 14 Feb 2012 10:12:03 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.fr; s=s1024;
	t=1329214323; bh=wNkYpGnwzKZxvvH4OIbcq34BBv5c7/AyvfvVi6VMLnc=;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=k4xz4djB1ZM3OKU9K5kjj469CV7dJdSfjKjAW/8FxtxaEdb6saVUQ2xUxwcHVBL0x4TTuR9GZRPj4BS23DwZ7hSEokvWUH9TOh7oKZooWWLZneqAUbtV97hGErogwEGi9O4/2M5/5anFbbQh3Cp9P7gfP4RADvOLAmvbsQUlO1M=
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=s1024; d=yahoo.fr;
	h=X-YMail-OSG:Received:X-Mailer:References:Message-ID:Date:From:Reply-To:Subject:To:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=ymWvYhQzu3NIJkuh/KNAe1w0hzBYxPmhxUxSICr2lqKySz4PJxTWMseVTMxSeHaey2DqkCRrbEWpvpaNnxrDWcSwJ8wqZ2VIpSxty5MgeMZGwDpsHCLoLnbvyGow7tSHg1MaHw8/OIjZ637+JrRG5G0R7Wepyfsx3tCCeoHEj2A=;
X-YMail-OSG: TTcdIjoVM1n9iX.TPNp_WG7_eN0oBJJUo0imntMGayaqhIe
	Lta9cxBu3QG2c4lOEFMkJWzHPGJ.aeRAokCxWM9tyGTOSWxXL_N2.IdOfKww
	nw7kTzUHbmR20osNIXYqfJUlMxWAEw086ou6U2uOk6IrywEVbfoeuMIkwv3r
	CZGy9zLK.uhTSHmw2mTpW8_jxjCZQ1iI1n21BHg9a.WghmWRfgplJkUh6ahC
	.GNDWWwZSMU6XImEGDepqN9Udr1sPRSzTU9IjPtjjX3Gocq9BB41wOQJAbqj
	1BBcE__z5iBFV39MXTPzsOo3wiwKjC90Ty6OFII.Ch_QYvKdMl3HJpPEguJy
	hZpVmmyMh7W6uDXcSN54HPbaXRxV3ciP3FQeZqib5XJ0YK8.dVYNEi1ICkGS
	toB8FlzGRsfu4pkDhw1f1KJ7mUym4oK7hXUQTfQfBHOad65rxuA6YR8gOZXF
	5dHo4EoZbUy3haHFI9n36Jp8sfYv8MkOuc3UJpgM98CudgJ69Vcc0vnTYudx
	LHN5f_AC07kv0HeelmTo.848JktRFO.vEE.MECD85ylCrQO_31iprgXKr1f.
	jNwLTyCrNVnR.Wgg7oTswrrB74thTJrpfcvKKOd_n3I5.2QgL3s_2aZqAbg- -
Received: from [213.193.97.58] by web29011.mail.ird.yahoo.com via HTTP;
	Tue, 14 Feb 2012 10:12:03 GMT
X-Mailer: YahooMailWebService/0.8.116.338427
References: <1329209188.15247.YahooMailNeo@web29001.mail.ird.yahoo.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74DE@SHSMSX102.ccr.corp.intel.com>
	<1329213674.19294.YahooMailNeo@web29004.mail.ird.yahoo.com>
Message-ID: <1329214323.96557.YahooMailNeo@web29011.mail.ird.yahoo.com>
Date: Tue, 14 Feb 2012 10:12:03 +0000 (GMT)
From: Patrick <kpa_info@yahoo.fr>
To: "Lu, Lianhao" <lianhao.lu@intel.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
In-Reply-To: <1329213674.19294.YahooMailNeo@web29004.mail.ird.yahoo.com>
MIME-Version: 1.0
Subject: Re : Re : Building sysroot for SDK
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
X-List-Received-Date: Tue, 14 Feb 2012 10:12:05 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

=0A=0A>> =0A>>Hi Patrick,=0A>>=0A>>If you want to add more packages into th=
e sysroot built by meta-toolchain, you may add your extra packages(i.e. lib=
sqlite3-dev) into the variable "TOOLCHAIN_TARGET_TASK".=A0 =0A>>Meta/recipe=
s-core/meta/meta-toolchain-gmae.bb might be an example of how to add more p=
ackages into the target sysroot.=0A>>=0A>>Best Regards,=0A>>Lianhao=0A>>=0A=
>=0A>Hi Lianhao,=0A>=0A>Thanks for your help ! I have created my own meta-t=
oolchain based on meta-toolchain-gmae.bb and it's work nicely.=0A>However, =
there remains a small problem. My own meta-toolchain-perso.bb file is store=
d in my own layer meta-perso.=0A>To include the meta-toolchain.bb with requ=
ire I need to use the full path to the meta layer: require ../../../meta/re=
cipes-core/meta/meta-toolchain.bb=0A>This is not really clean, do you know =
how to point the meta-toolchain.bb file without using the full path ?=0A>=
=0A>Thanks again for your help=0A>=0A>Patrick=0A=0AI answer myself to my qu=
estion:=0AI used a meta-toolchain.bbappend file placed in my own layer. Thi=
s file append the libqlite3-dev package to the TOOLCHAIN_TARGET_TASK. =0ATh=
is works fine !=0A=0APatrick=0A

