Return-Path: <vivekrajpara12292@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7E22E00B47; Wed, 31 May 2017 22:26:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vivekrajpara12292[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.47 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335B7E00ADD
	for <poky@yoctoproject.org>; Wed, 31 May 2017 22:25:57 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id l18so41316518oig.2
	for <poky@yoctoproject.org>; Wed, 31 May 2017 22:25:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4bDgHEBC2DBqJ+SeYfFOTF0OR+JVeUdqaCitnGSOWeQ=;
	b=KpC4m8ECghBQ1JVRHn31suv3UnaqbzCdPDSt0jdIUrhUM5n1e6OuXDRxjyFd/r99pr
	4tqofktdSBDH2bgiHrA3dA+x2Nz2Ci/jX5nPI2uAY4epL8VVKp/2y/YurM8rfHNAw/DT
	Kv8j8fj6OcPF6HvSJdXGIFBnbMbp/074OJpWJW3gdVSiMA5k8XlOOw7ZRbHuu5fScY+R
	24hCE9en+PTSWAIGJR1r4Dk8HvytMuRnALxa+o79t+yu2qAZ0aUi648Itlkf6QCYYZjV
	5WxHkKMkSrFriIxaz0W5LJpl8yc3tGwQZLRgiLQ/ZA1nxWA7PVIbDwOFU5gfVtScJ4Tn
	jeXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4bDgHEBC2DBqJ+SeYfFOTF0OR+JVeUdqaCitnGSOWeQ=;
	b=F+P/VDXnVfIAV7u3FgZOTCV7toImBHx4OgeFLlM5bJu8o7EQJhvbvuilmsfMQ1LJgq
	vxRZ1Xsk4O0ZoQPs2Vwo937SC/BlcNnTKdeGA4gTHyspzN2jf7xeBx1bifcA2bCyOKUe
	ii9FvTI7e1Fwbjti0DGq2GDjAkB6CB7tWddJfzB2b9gUZPoEo363bV5zlBSGws9yJeAx
	1mKo0G9TcVdt5x9cZcLuepdDjN4Y19tpELYujzVCQLw0KMwNEOPFLzVXFcSAj+keDGhp
	b3OtOASEpZuweIs+tR9h0RROY5p4CXNyVz+ZDdhz+JKwdox2ViqkwY+xZxPTbYquwe3d
	8mzQ==
X-Gm-Message-State: AODbwcD9MjoULZJsZkCuFgk+TxM2PpuitJGaLF+BMnVH9QtAHQcOmSsy
	ctGkUWni+Fd0fphEfYA4N+zl+fx9Fu3Q
X-Received: by 10.157.17.71 with SMTP id p7mr12833387otp.42.1496294757185;
	Wed, 31 May 2017 22:25:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.74.8.72 with HTTP; Wed, 31 May 2017 22:25:36 -0700 (PDT)
From: Vivek Rajpara <vivekrajpara12292@gmail.com>
Date: Thu, 1 Jun 2017 10:55:36 +0530
Message-ID: <CAER3bpRRu69d8PHC8Wj5qnETtByXqRNGW1mm-cZ8XnsDYxoNgw@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Extended SDK installation problem.
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
X-List-Received-Date: Thu, 01 Jun 2017 05:26:08 -0000
Content-Type: multipart/alternative; boundary="001a1145c9307b3df90550df45f5"

--001a1145c9307b3df90550df45f5
Content-Type: text/plain; charset="UTF-8"

Hi All,

I need help in setting  extended sdk in my x86_64 based host machine for
developing application for armv7 neon architecture.

I have made yocto setup for NXP's imx6ull based board image and have
populated extended sdk for the same. SDK is populated successfully.

While installing it,  I am getting following error.

*"ERROR: Uninative selected but not configured, please set UNINATIVE_URL"*

While debugging this issue, I found that "*populate_sdk_ext.bbclass*" is
changing local.conf to add support for UNINATIVE. It inherits uninative
class and also adding checksum in it. But it is not adding UNINATIVE_URL in
local.conf.

Can you please let me know what can be proper solution for this error?

Thank you in advance.

Best Regards,
Vivek

--001a1145c9307b3df90550df45f5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hi All,</span><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">I need help=
 in setting =C2=A0extended sdk in my x86_64 based host machine for developi=
ng application for armv7 neon architecture.=C2=A0</div><div style=3D"font-s=
ize:12.8px"><br></div><div style=3D"font-size:12.8px">I have made yocto set=
up for NXP&#39;s imx6ull based board image and have populated extended sdk =
for the same. SDK is populated successfully.=C2=A0<br></div><div style=3D"f=
ont-size:12.8px"><br></div><div style=3D"font-size:12.8px">While installing=
 it, =C2=A0I am getting following error.</div><div style=3D"font-size:12.8p=
x"><div><br></div><div><i>&quot;ERROR: Uninative selected but not configure=
d, please set UNINATIVE_URL&quot;</i></div></div><div style=3D"font-size:12=
.8px"><br></div><div style=3D"font-size:12.8px">While debugging this issue,=
 I found that &quot;<i>populate_sdk_ext.bbclass</i>&quot; is changing local=
.conf to add support for UNINATIVE. It inherits uninative class and also ad=
ding checksum in it. But it is not adding UNINATIVE_URL in local.conf.=C2=
=A0</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:=
12.8px">Can you please let me know what can be proper solution for this err=
or?</div><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:=
12.8px">Thank you in advance.</div><div style=3D"font-size:12.8px"><br></di=
v><div style=3D"font-size:12.8px">Best Regards,</div><div style=3D"font-siz=
e:12.8px">Vivek=C2=A0</div></div>

--001a1145c9307b3df90550df45f5--
