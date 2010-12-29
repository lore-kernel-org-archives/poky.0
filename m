Return-Path: <koen@dominion.thruhere.net>
Received: from mail-ww0-f42.google.com (mail-ww0-f42.google.com [74.125.82.42])
	by mx1.pokylinux.org (Postfix) with ESMTP id 216834C80050
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 03:18:59 -0600 (CST)
Received: by wwi17 with SMTP id 17so10341113wwi.5
	for <poky@yoctoproject.org>; Wed, 29 Dec 2010 01:18:59 -0800 (PST)
Received: by 10.227.154.204 with SMTP id p12mr8589885wbw.6.1293614339203;
	Wed, 29 Dec 2010 01:18:59 -0800 (PST)
Received: from [172.20.1.5] (ip545070eb.adsl-surfen.hetnet.nl [84.80.112.235])
	by mx.google.com with ESMTPS id
	q18sm9935222wbe.17.2010.12.29.01.18.57
	(version=TLSv1/SSLv3 cipher=RC4-MD5);
	Wed, 29 Dec 2010 01:18:57 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1082)
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <4D1A8103.2030501@linux.intel.com>
Date: Wed, 29 Dec 2010 10:18:56 +0100
Message-Id: <A1C71709-8C15-4B14-941E-965112512C5A@dominion.thruhere.net>
References: <4D1A8103.2030501@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1082)
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Library paths for Makefile based recipes
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
X-List-Received-Date: Wed, 29 Dec 2010 09:19:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 29 dec 2010, om 01:29 heeft Darren Hart het volgende geschreven:

> I'm working on packaging kernelshark ("make gui" for the trace-cmd recipe
> basically). It fails trying to link to -lgtk-x11-2.0. I have added gtk+
> as a DEPENDS and the library does exist in the sysroots. I have also added
> "inherit pkgconfig" as the project Makefile uses it extensively.

'inherit pkgconfig' only does DEPENDS_prepend = "pkgconfig-native "

regards,

Koen

