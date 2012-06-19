Return-Path: <rjiejie@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BEA8E00746
	for <poky@yoctoproject.org>; Tue, 19 Jun 2012 02:06:35 -0700 (PDT)
Received: by dadz8 with SMTP id z8so9834327dad.35
	for <poky@yoctoproject.org>; Tue, 19 Jun 2012 02:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=9cn9YDxcD3sk5G6n4keV63lPc0DL77kChdmbTzxbEUw=;
	b=TJdVu1jcGEj9d6/vtmG48UETQIOjsX+iGK523HBY70r+yXwcvgm+0FVP7jHP6UyOb2
	9KeNhg8JNN50C4/ttJ/hE2Q94KHjnRD9f1a9ph4iD6MwZGM2Iaegk2f2pWJddOGR1BVZ
	qrltUdlsRhPqgZ+jPXi2V2NmfscPzx0XBDI1qiRYtPsiSjrxD1L2APwSzF/LGAp/3lBn
	mDKKc5Glp8A04lgLi+wVCRF/YAQBHVWP6X7shxL3w5vBw++gArSnZsDpL5sM33Oa5FDq
	aSGEWCcDkIKRI8u0EtQGkd+gZEn7RCeeVVYBThuAvUrtljbfGXRpIB5fqV8XOGh/BIIj
	9Kdw==
Received: by 10.68.138.169 with SMTP id qr9mr61973685pbb.27.1340096794796;
	Tue, 19 Jun 2012 02:06:34 -0700 (PDT)
Received: from [10.5.1.109] ([101.71.248.130])
	by mx.google.com with ESMTPS id oo6sm27184967pbc.22.2012.06.19.02.06.30
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 19 Jun 2012 02:06:33 -0700 (PDT)
From: jojo <rjiejie@gmail.com>
Date: Tue, 19 Jun 2012 17:06:25 +0800
Message-Id: <9F0B1281-3CC3-4D4B-847E-F1ABF5B32E8A@gmail.com>
To: poky@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Help with configuring Yocto with an external toolchain except "csl"
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
X-List-Received-Date: Tue, 19 Jun 2012 09:06:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

@all,
	I google some information about this topic and then,
	i found the case is that jut support "CodeSourcery labs" =
toolchain.
=09
	I think my external toolchain is not standard of directory like =
"tcmode-externl-csl".
	I can use "buildroot" to use this toolchian that just use three =
variables following :
		BR2_TOOLCHAIN_EXTERNAL_PREFIX
		BR2_TOOLCHAIN_EXTERNAL_PATH
		BR2_TOOLCHAIN_EXTERNAL_SYSROOT_PATH

	so there are some solution in poky ? thanks for you attention :)


B.R.
-- jojo





