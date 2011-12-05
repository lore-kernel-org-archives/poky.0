Return-Path: <mail@ing-duebon.de>
Received: from leonardo.servertools24.de (leonardo.servertools24.de
	[31.47.248.18])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 987AAE006F6
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 08:42:47 -0800 (PST)
Received: from mail-bw0-f48.google.com (mail-bw0-f48.google.com
	[209.85.214.48]) (Authenticated sender: web54p1)
	by leonardo.servertools24.de (Postfix) with ESMTP id DECCE1531ED6
	for <poky@yoctoproject.org>; Mon,  5 Dec 2011 17:42:38 +0100 (CET)
Received: by bkas6 with SMTP id s6so139543bka.35
	for <poky@yoctoproject.org>; Mon, 05 Dec 2011 08:42:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.139.133 with SMTP id c5mr2144885wej.25.1323103358561; Mon,
	05 Dec 2011 08:42:38 -0800 (PST)
Received: by 10.223.104.79 with HTTP; Mon, 5 Dec 2011 08:42:38 -0800 (PST)
Date: Mon, 5 Dec 2011 17:42:38 +0100
Message-ID: <CANv1b=2D8rkzkDpf8Xbwau4_JwPP6_Q_bRicPofxafCnKxe9=A@mail.gmail.com>
From: =?ISO-8859-1?Q?Matthias_D=FCbon?= <mail@ing-duebon.de>
To: poky@yoctoproject.org
X-leonardo-MailScanner-Information: Please contact the ISP for more information
X-leonardo-MailScanner-ID: DECCE1531ED6.A26CF
X-leonardo-MailScanner: Found to be clean
X-leonardo-MailScanner-From: mail@ing-duebon.de
X-Spam-Status: No
Subject: external toolchain example
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
X-List-Received-Date: Mon, 05 Dec 2011 16:42:48 -0000
Content-Type: multipart/alternative; boundary=0016e6d9a331b02dc404b35b0103

--0016e6d9a331b02dc404b35b0103
Content-Type: text/plain; charset=ISO-8859-1

Hello,

did anyone ever try to use the external example toolchain "csl-2008q3-72"
(TCMODE = "external-csl2008q3")
When building bitbake core-image-minimal I got an error in do_configure of
external-csl-toolchain_2008q3-72.bb:

"sed: can't read
/home/matthias/poky/build/tmp/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/external-csl-toolchain-2008q3-72/elf/
ldd.bash.in: No such file or directory

Should I try to debug this? Is it of any interest?

Regards
Matthias

--0016e6d9a331b02dc404b35b0103
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div><div><br></div><div>did anyone ever try to use the externa=
l example toolchain &quot;csl-2008q3-72&quot; (TCMODE =3D &quot;external-cs=
l2008q3&quot;)</div><div>When building bitbake core-image-minimal I got an =
error in do_configure of=A0<a href=3D"http://external-csl-toolchain_2008q3-=
72.bb" target=3D"_blank">external-csl-toolchain_2008q3-72.bb</a>:</div>

<div><br></div><div>&quot;sed: can&#39;t read /home/matthias/poky/build/tmp=
/work/armv5te-none-linux-gnueabi/external-csl-toolchain-2008q3-72-r1/extern=
al-csl-toolchain-2008q3-72/elf/<a href=3D"http://ldd.bash.in" target=3D"_bl=
ank">ldd.bash.in</a>: No such file or directory</div>

<div><br></div><div>Should I try to debug this? Is it of any interest?</div=
><div><br></div>
Regards<div>Matthias</div>

--0016e6d9a331b02dc404b35b0103--
