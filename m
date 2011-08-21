Return-Path: <darthhunterix@wp.pl>
Received: from mx4.wp.pl (mx4.wp.pl [212.77.101.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E648E011CA
	for <poky@yoctoproject.org>; Sun, 21 Aug 2011 11:49:34 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@wp.pl;
	x-dkim-adsp=none (insecure policy)
Received: (wp-smtpd smtp.wp.pl 26793 invoked from network);
	21 Aug 2011 20:49:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
	t=1313952572; bh=l7VlnyLtRkoCXTiSjXmH2AXbMnLgas9V3DyVMjHXaKI=;
	h=From:To:Subject;
	b=YxtDvb0Yxyi8HmP17rQuvPkUySi440MFjHxqXuSMYxT+QWzVGCoHfWF8+/IAcwyW5
	dCELE54Sk7U3xj2IutIzx0GDFBBWprOlLe1JL6gSuTOdVLpGktxEAkZzpbeUrgnnXu
	i/SlMUk+gOcMFESqP0grWH/rrc0FSGaTRwP2mu6g=
Received: from out.poczta.wp.pl (HELO localhost) ([212.77.101.240])
	(envelope-sender <darthhunterix@wp.pl>)
	by smtp.wp.pl (WP-SMTPD) with SMTP
	for <poky@yoctoproject.org>; 21 Aug 2011 20:49:32 +0200
Date: Sun, 21 Aug 2011 20:49:32 +0200
From: =?ISO-8859-2?Q?Przemek_Ogorza=B3ek?= <darthhunterix@wp.pl>
To: poky@yoctoproject.org
Message-ID: <4e51533cbaea03.13400098@wp.pl>
MIME-Version: 1.0
X-Mailer: Interfejs WWW nowej poczty Wirtualnej Polski
X-User-Agent: Mozilla/5.0 (X11; Linux i686; rv:6.0) Gecko/20100101 Firefox/6.0
Organization: Poznaj Poczte WP http://poczta.wp.pl/info-start.html
X-WP-IP: 83.24.49.235
X-WP-AV: skaner antywirusowy poczty Wirtualnej Polski S. A.
X-WP-SPAM: NO 0000000 [cYNk]                               
Subject: Several noob's problems:
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
X-List-Received-Date: Sun, 21 Aug 2011 18:49:36 -0000
Content-Type: text/html; charset=iso-8859-2
Content-Transfer-Encoding: 8bit
Content-Disposition: inline

<style>blockquote {padding-left: 1ex; margin: 0px 0px 0px 0.8ex; border-left: #cccccc 1px solid;} p {margin: 0px;padding: 0px;} </style>
<p>Hello!</p>
<p>I've got some problems with using Poky and I couldn't find any solutions in documentation or wiki, so I hope that someone will be able to help me. Some questions might sound stupid, but I've got almost zero experience with embedded hardware, and even some obvious things are a mystery to me.</p>
<p>&nbsp;</p>
<p>Question one:</p>
<p>There is an excellent instruction of booting the device over network, but I need to download the image directly to device. How do I do that?</p>
<p>&nbsp;</p>
<p>Question two:</p>
<p>I have installed the Eclipse plug-in, but it requires running "bitbake meta-ide-support" to build toolchain. Is there any way to use pre-build tarballs from http://autobuilder.yoctoproject.org/downloads/yocto-1.0/toolchain/i686/ ?</p>
<p>I have written in another mail (Subject: "glibc building problem")&nbsp; why I can't simply create my own toolchain (compilation problems).</p>
<p>&nbsp;</p>
<p>Question three:</p>
<p>As I understand, to customize my Poky, I have to edit recipes (or write my own). There are plenty of them however in meta directory, and finding a pattern among them is rather difficult. Is there any sort of wizard (I mean something like "make menuconfig" during normal kernel compilation) for it, or I have to study meta directory?</p>
<p>&nbsp;</p>
<p>I use Poky 5.0.1 on 32-bit host with Fedora 15 and my target is PowerPC.</p>
<p>&nbsp;</p>
<p>That's all, for now at least.</p>
<p>Thanks in advance for any help.</p>
<p>Best regards</p>
<p>Przemek "Darth Hunterix"</p><br />



