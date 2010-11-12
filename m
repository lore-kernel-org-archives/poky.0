Return-Path: <mbalcells@gmail.com>
Received: from pug.o-hand.com (3a.49.1343.static.theplanet.com [67.19.73.58])
	by mx1.pokylinux.org (Postfix) with ESMTP id AF7314C80FD4
	for <poky@lists.pokylinux.org>; Fri, 12 Nov 2010 10:49:53 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pug.o-hand.com (Postfix)
	id 73E8912EC3D7; Fri, 12 Nov 2010 11:26:38 -0600 (CST)
Received: from mail-ww0-f46.google.com (mail-ww0-f46.google.com [74.125.82.46])
	by pug.o-hand.com (Postfix) with ESMTP id 179FD12EC3D2
	for <poky@o-hand.com>; Fri, 12 Nov 2010 11:26:37 -0600 (CST)
Received: by wwi14 with SMTP id 14so4173wwi.3
	for <poky@o-hand.com>; Fri, 12 Nov 2010 08:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:date:message-id
	:subject:from:to:content-type;
	bh=zlG2L5NISOxF+nLqfPHQs1wUsgCtSuDjmTov5u9Ajks=;
	b=oFugglzxPq0tn01nkeMlBvHXB+ZKK0gwN0dHTNhq3g/qvSR/Op7egAv5BvlhsOhsTD
	LqBONwxQzPTetltC0CsTvWI5Swjssjob+xeq/FsyDmqpVGM5VBdcrsZMk/7tsbCUSgr5
	hjbYpz4KLjTe/4RGX+6cSwczg7H21A68x5tM0=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=sOM4smNux5kn2uMizd++xiULahTaDWhX9o3Y1KwDfIOHFeJo2CSM1My3qXBVBMSoE8
	B3mg2/QFQnabPXiJHV5S7Zxk/DnM6F1XQ3MSPvAd8PbgPOMDgEmMIlOwsNBGu1wt+RW8
	nfXaKfkbpuaeL9cKUaHzWxw5rd3XMMRjernTc=
MIME-Version: 1.0
Received: by 10.227.136.146 with SMTP id r18mr845177wbt.98.1289580591958; Fri,
	12 Nov 2010 08:49:51 -0800 (PST)
Received: by 10.227.136.205 with HTTP; Fri, 12 Nov 2010 08:49:51 -0800 (PST)
Date: Fri, 12 Nov 2010 17:49:51 +0100
Message-ID: <AANLkTinE-MSLQ4FGC-2QA3QyNpmxKtdJAPET67bRkyHM@mail.gmail.com>
From: Marc <mbalcells@gmail.com>
To: poky@o-hand.com
Subject: newbie recipe question
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Nov 2010 16:49:53 -0000
Content-Type: multipart/alternative; boundary=0016368336f817d5f90494dde1cb

--0016368336f817d5f90494dde1cb
Content-Type: text/plain; charset=ISO-8859-1

Hello, I'm a newbie in creating recipes for poky and I'm running through a
series of problems.
I'm trying to make a recipe in order to build an ipk package containing a
series of webpages and scripts, I have them at a subversion repository.
For now it works simply by pointing at the svn repository and specifiing at
do_install every directories files to their destination. like this:
=======================================================================
SRCREV = "${AUTOREV}"
PR = "${SRCREV}"

SRC_URI = "svn://server/svn/;module=webpackage;proto=http "

S = "${WORKDIR}"

do_install(){
install -m 0755 -d ${D}/etc/
install -m 0755 -d ${D}/www/
install -m 0755 -d ${D}/www/images
install -m 0755 -d ${D}/www/cgi-bin
install -m 0755 -d ${D}/www/includes
 install -m 0755 ${S}/*.htm ${D}/www/
install -m 0755 ${S}/*.css ${D}/www/
install -m 0755 ${S}/includes/* ${D}/www/includes/
install -m 0755 ${S}/cgi-bin/* ${D}/www/cgi-bin/
install -m 0755 ${S}/images/* ${D}/www/images/

}
=================================================================

Is there any other way to do this without having to specify the whole
subdirectory structure and every file extension? ( * is not working)
Since I'm adding and deleting files to my repository pretty frequently I
don't wan't having to modify the recipe each time.

Thank's


-- 
Marc.

--0016368336f817d5f90494dde1cb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hello, I&#39;m a newbie in creating recipes for poky and I&#39;m running th=
rough a series of problems.=A0<div>I&#39;m trying to make a recipe in order=
 to build an ipk package containing a series of webpages and scripts, I hav=
e them at a subversion repository.</div>
<div>For now it works simply by pointing at the svn repository and specifii=
ng at do_install every directories files to their destination. like this:</=
div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</d=
iv>
<div><div>SRCREV =3D &quot;${AUTOREV}&quot;</div><div>PR =3D &quot;${SRCREV=
}&quot;</div><div><br></div><div>SRC_URI =3D &quot;svn://server/svn/;module=
=3Dwebpackage;proto=3Dhttp &quot;</div><div><br></div><div>S =3D &quot;${WO=
RKDIR}&quot;</div>
<div><br></div><div>do_install(){</div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>install -m 0755 -d ${D}/etc/</div><div><s=
pan class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>install -m 0=
755 -d ${D}/www/</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>insta=
ll -m 0755 -d ${D}/www/images</div><div><span class=3D"Apple-tab-span" styl=
e=3D"white-space:pre">	</span>install -m 0755 -d ${D}/www/cgi-bin</div><div=
><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>install -=
m 0755 -d ${D}/www/includes</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span></div=
><div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>inst=
all -m 0755 ${S}/*.htm<span class=3D"Apple-tab-span" style=3D"white-space:p=
re">	</span>${D}/www/</div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>insta=
ll -m 0755 ${S}/*.css<span class=3D"Apple-tab-span" style=3D"white-space:pr=
e">	</span>${D}/www/</div><div><span class=3D"Apple-tab-span" style=3D"whit=
e-space:pre">	</span>install -m 0755 ${S}/includes/* ${D}/www/includes/<spa=
n class=3D"Apple-tab-span" style=3D"white-space:pre">	</span></div>
<div><span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span>insta=
ll -m 0755 ${S}/cgi-bin/* ${D}/www/cgi-bin/<span class=3D"Apple-tab-span" s=
tyle=3D"white-space:pre">	</span></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>install -m 0755 ${S}/images/* ${D}/www/im=
ages/<span class=3D"Apple-tab-span" style=3D"white-space:pre">	</span></div=
>
<div><br></div><div>}</div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div><div><br></div><div>Is there any other way to do this without havi=
ng to specify the whole subdirectory structure and every file extension? ( =
* is not working)</div>
<div>Since I&#39;m adding and deleting files to my repository pretty freque=
ntly I don&#39;t wan&#39;t having to modify the recipe each time.</div><div=
><br></div><div>Thank&#39;s</div><div><br></div><br>-- <br>Marc.<br>
</div>

--0016368336f817d5f90494dde1cb--
