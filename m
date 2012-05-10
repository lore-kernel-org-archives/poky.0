Return-Path: <redzhepoff@gmail.com>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 633A4E0141F
	for <poky@yoctoproject.org>; Thu, 10 May 2012 05:30:25 -0700 (PDT)
Received: by yhfq46 with SMTP id q46so1828410yhf.35
	for <poky@yoctoproject.org>; Thu, 10 May 2012 05:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:cc:content-type;
	bh=R5CFL7YLUZp8+fSnR51XOh7qfm7Nv4q82nZZISjaxFQ=;
	b=bA+0r+LwwLAqikXH1RlZKfO8GjtrxgGPVP38g3ZQ+SWTCR783f5Obg7CWAZDfkfR4G
	oCBD+ai/MmIzML59lGsZnr2pWd2Qcj4ZHsyjFMQZHrPqniK6Ay7cLlBXVTd8HW2bDhpR
	0B5SqLna1ubLIX4iz0nTJtsk4XBDlaQJE4HWrepduAmlvnfcuKOPSKKxHekxd9dzXX7i
	ldA0/QpB9Nn5qM1Wqg0le+x+xHIgU/vG3yGQJr2Jzvw2/deONzl5m4g9b9gkcSp2JKrF
	35IviAtCqwyNQ75HR891vBxe6TB1/VokobL4zMKn01476LV3igPi7OZd/vCmZRslC/ic
	BMVw==
MIME-Version: 1.0
Received: by 10.50.180.225 with SMTP id dr1mr2192571igc.52.1336653024658; Thu,
	10 May 2012 05:30:24 -0700 (PDT)
Sender: redzhepoff@gmail.com
Received: by 10.231.174.139 with HTTP; Thu, 10 May 2012 05:30:24 -0700 (PDT)
Date: Thu, 10 May 2012 15:30:24 +0300
X-Google-Sender-Auth: DN6MttTvqXm1Id82A8qTAVUzgqQ
Message-ID: <CAK_2Fr=uizjqCOecKzuGndi00nMDtEiYpFPJbf-B=o=eO6ZNnA@mail.gmail.com>
From: Vladimir Redzhepoff <vladimir.redzhepoff@promwad.com>
To: poky@yoctoproject.org
Cc: denx@promwad.com
Subject: Missing native compiler in the core-image-sato-dev
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
X-List-Received-Date: Thu, 10 May 2012 12:30:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Group

According to http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html

core-image-sato-dev: A core-image-sato image suitable for development
that also includes
a native toolchain and libraries needed to build applications on the
device itself. The image
also includes testing and profiling tools as well as debug symbols.
This image was
formerly core-image-sdk.

I've built for core-image-sato-dev for armv7-a and didn't find native
toolchain in the image.
Is it known issue for poky now?

-- 
Best regards,
Vladimir Redzhepoff

