Return-Path: <tharvey@gateworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 328C5E00B31; Tue, 20 Jun 2017 06:51:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BED38E00B2E
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 06:51:22 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id x70so22903980wme.0
	for <poky@yoctoproject.org>; Tue, 20 Jun 2017 06:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gateworks-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=bJxf2t0xfBw3ac7SycwWI1ChDR6oEjPrcwxwxiRZqyo=;
	b=A6FrRSphxhHK6TFlic9aHDU7HmE1K4JnnepvNsDCQfDZWZPr6IDVDftz42xRsnXvcQ
	OAbhiwR2nGEQVJZvu7wgvZ6YP6eaf5nKPy93EVj88zohaydbqH5ax2P8ifzzhjA4h53G
	YdSRFEcW7vdBA5WEUlCGSebQL1VQ8Ymnzuk8dqM4ichO4Cn4WS0RC9JWsasBJMf2Yqz5
	Q/HyQzIXAnJ72mbwJnhNaxh9mv/QSulzt0e+7PE9Qk7FnvWuHywT9yN3h9kivN7r/1QG
	Xsbdntz022e8JUyR8dsr6rsCgseVwysIDfeuWpn7XfNg9L1SUesfsF/OLKGXka2bvZKi
	nKeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bJxf2t0xfBw3ac7SycwWI1ChDR6oEjPrcwxwxiRZqyo=;
	b=Ir88SdrfGePP/UGXKZqYda4MpoE1azero7j0zkJFl8N5B1a1IT5irWu8a01DsnR/GR
	a/EDSXlkoyLWyrR5w+TKQTl9eX70RxPqcdEofo3lK0TKtGX91+kMO0R81Hh41K0T/HlK
	SxI50yZWF/MTzuzXkkk3slgM5RIF9YeJz9sGg/a1drfVas8wchSaufa/64OB3XmFYzk2
	eWxioTBPJAb3PzNx4bRjRUtoXD1EvsT5U6CUnuPsc+Ye8wZQv7QF2Qzi5alSwIyK2Jl3
	LFY8oXKNEfkoFN83e0w6EKTXUcpujfWJe3kVWo0Ks4lbfBdcGWSUa76gsw+6i1ULxKUR
	KZaw==
X-Gm-Message-State: AKS2vOxSK9QQL6Lv1MmjK8aB2P1TsJF37tQpT7K5b6nLWCrAZuaCCz5c
	dGfMYevAsPMikmsaUlW6zBuDPkNuI7BD
X-Received: by 10.28.227.7 with SMTP id a7mr2754519wmh.73.1497966679659; Tue,
	20 Jun 2017 06:51:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.132.12 with HTTP; Tue, 20 Jun 2017 06:51:19 -0700 (PDT)
From: Tim Harvey <tharvey@gateworks.com>
Date: Tue, 20 Jun 2017 06:51:19 -0700
Message-ID: <CAJ+vNU1Ww6fbaPD5KRqTw=G-kywifOtoe-G0-ebrKZ92LM4KDQ@mail.gmail.com>
To: poky@yoctoproject.org
Subject: populate_sdk not including header files in Yocto 2.3?
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
X-List-Received-Date: Tue, 20 Jun 2017 13:51:30 -0000
Content-Type: text/plain; charset="UTF-8"

Greetings,

I'm finding that 'bitbake image -c populate_sdk' does not appear to be
working as I remember it working in a previous version of Yocto (1.8
is where I last used it). The image I'm using contains gstreamer1.0
packages via IMAGE_INSTALL and the SDK sysroot does indeed contain the
gstreamer libs in usr/lib yet there are no gstreamer header files in
sysroot (usr/include/gstreamer-1.0 missing along with other libs). I
do see the header files in the 'external' SDK

Has something changed that I don't yet understand or is something
perhaps broken?

Regards,

Tim

