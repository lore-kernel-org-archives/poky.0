Return-Path: <jeff.dagenais@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D0F5E00D11; Mon,  4 Mar 2019 08:50:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeff.dagenais[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B61EE0097C
	for <poky@yoctoproject.org>; Mon,  4 Mar 2019 08:50:46 -0800 (PST)
Received: by mail-qk1-f175.google.com with SMTP id p15so3154771qkl.5
	for <poky@yoctoproject.org>; Mon, 04 Mar 2019 08:50:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:cc:to; bh=vfRZfPSgsxQr4sR0kRP/L6eOt+KLgD5ah5s5TJJnwnQ=;
	b=WDJdBux07hKTT6590VjsVkVVY58wMe5gIQGfOdkJgpBM7OCMS1V1ads/h9KdWLOWZd
	R24tMrXUuxsCdWiiZVAyd/5hTEG/3pxIfeh8PQC1eDVUVw5UJPvPJRfNca3cHawm6mbw
	UMpg6gxD/l3/4uurWrfwXbGpofsykUDYbIqdp13EnkV65TWX2bAf3Rr6ReXskPMzuASX
	Etbf/mytLmG1fZXJn6j1hiGvHIY38fNWoU0G2rDRGhHoqBTVfFg3RkRrvEfItu77WOcq
	osUOQhjEVO11oPLRcfnKhw96ytMIpYvLWj42TU2MsRtPMtNLhf8F7TZdYKKs83JUGwOg
	7quA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:cc:to;
	bh=vfRZfPSgsxQr4sR0kRP/L6eOt+KLgD5ah5s5TJJnwnQ=;
	b=fegUiPHKtz3sOMJq7w39SZsSlOmTDyGl5ioPJ6hvn7tvvCNxGZ3MZQY5qw3uk76QIa
	yhIx6XeO2iypo287CnIMJVMYVlfBTpk5raZ2QRC0hEWMTg+rbMR0wrfzkUeVh8c7Du+e
	GC/5QYbJrOk4XPkIlAsbp1JMvmU1CBANEwKqJkdXyLYemFGjzDxh2w7WFhuJuXpEOv65
	Bcb2iQQwlCzWmMtrkxI7i50Ax+e0PUxHYzKvcMIT9IinE/PK0J8SWa12plD32FZ7wk8Y
	bfbZO/QEHWaHIZoXf9GVkhQE9zxC16yz6tUQyf+UnN/c1TA3Fq+4Tv+YXDC2vDcszsj6
	q/9g==
X-Gm-Message-State: APjAAAW9UESHHJi//ua11KYrMquVsmtWuOZ1EGrlv+yz4/bcn7hNGJHP
	UAmdeK2ruIHY+SHfssxqSV4oYsg0uKo=
X-Google-Smtp-Source: APXvYqwki5gG0uFYftHAvJGCncbejBxzwrLCaWaa6ejvm3aHiGaHsoudHr9vKC23y/ix6nWSSyMxoQ==
X-Received: by 2002:a37:8dc5:: with SMTP id
	p188mr14012450qkd.330.1551718245368; 
	Mon, 04 Mar 2019 08:50:45 -0800 (PST)
Received: from jfdmac.sonatest.net
	(ipagstaticip-d73c7528-4de5-0861-800b-03d8b15e3869.sdsl.bell.ca.
	[174.94.156.236]) by smtp.gmail.com with ESMTPSA id
	k37sm4286503qtc.91.2019.03.04.08.50.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Mar 2019 08:50:44 -0800 (PST)
From: Jean-Francois Dagenais <jeff.dagenais@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.2 \(3445.102.3\))
Message-Id: <D67743D4-7A14-4AB5-AAC4-CC5E4999EB6D@gmail.com>
Date: Mon, 4 Mar 2019 11:50:43 -0500
To: Poky Project <poky@yoctoproject.org>
X-Mailer: Apple Mail (2.3445.102.3)
Cc: paul.eggleton@linux.intel.com
Subject: /usr/include/libnl3 or /usr/include
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
X-List-Received-Date: Mon, 04 Mar 2019 16:50:47 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi guys,

There's been a couple of time when I've hit snags where packages use =
their version numbers in the paths of stuff they provide. This poses a =
small challenge where dependent recipes might have to specifically =
account for this "special" path.

For example, libnl is using /usr/include/libnl3 and wpa_supplicant has =
to specifically "hack" its configure process to be able to find the =
libnl headers.

Since libnl does explicitly that it cannot co-exist with it's previous =
versions:
RREPLACES_${PN} =3D "libnl2"
RCONFLICTS_${PN} =3D "libnl2"

what is the point of the sub-path?

Would you receive a patchset which moves libnl's headers files back at =
/usr/include (or rather: ${includedir}) ?

I suspect this would also set a precedent.


