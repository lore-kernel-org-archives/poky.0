Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61B64E00D3F; Tue, 26 Jul 2016 04:29:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2CB7E00D3F
	for <poky@yoctoproject.org>; Tue, 26 Jul 2016 04:28:56 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id f65so169956114wmi.0
	for <poky@yoctoproject.org>; Tue, 26 Jul 2016 04:28:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=okJWFRy56IF4BffLsI6vX2Fcb8vxjyCxbcG8PT5Kdes=;
	b=uhb6m8iYzO8AnXboOvFUPDnjpMH7LxAPKVH67O+M1p5dZ+f8nRSRzniPHS11J6GKR6
	ggFc/D/QC7Mn7AQs+ztJamVjIvhSbfN86C7efrxpwTF97UHc4qaTUdq5cPMw7/2bOF9P
	I9s5Y1iZWa/ig6QojmgPIsVA0ocnphDUPGSvEQkBGXLMD2B8gNWnOxB6N/1UlQNTFEaJ
	twlJ015on7+oLYH9uPUFyU6ApAH3Tq7qASx89kgTKte0KWH6Mk4VGz0RciqPNUKoECJq
	C060bk7VAgR3hj7ChaGRkULOB8nr7fBoQWxrkNiM9pKsOKZ21N6AHN4N7qqYhVQRJC4L
	ZYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=okJWFRy56IF4BffLsI6vX2Fcb8vxjyCxbcG8PT5Kdes=;
	b=MtYW4HE0WKyOZNet71M2LRQ1wqF83t6lKwLwmJLyaz8UyRVNz/dBMXCnvkoAgKbq7l
	azJVDgi4Wy0AreYhq8hxeg6HEtFqBhRsbv8F8S9AWoHj12gyw/eMR33zDNBxSxH8+PhR
	O/3MmHJ62t20qe0h65CETI1aL26LutpNll4Ghtv5XP3T3PlvvKbq7qBbDF2tRw8ZWI9n
	I4QqLM3R6uSqpocfyoKO5P98qXW7fw7tU3R5aPTTUXyVCAJHPTbI+cZRUpQ1MnD4qoNh
	PlTOIQmvbY8ihSOnVi1xqe76kNGj1Lni25OCx0GTXraHovpDfkw0JQGAL3kS5K7Ywq5t
	4bBw==
X-Gm-Message-State: AEkoouuCAKSe6VwS9SOEisqoggv98PRQF6WdCDzqxRFY17sA92CRq7BnPTm8fkB7n1e4i1mGPOQ/DZoRb5pDJA==
X-Received: by 10.194.28.5 with SMTP id x5mr19729738wjg.11.1469532534674; Tue,
	26 Jul 2016 04:28:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.217.211 with HTTP; Tue, 26 Jul 2016 04:28:54 -0700 (PDT)
From: Prasant J <pj0585@gmail.com>
Date: Tue, 26 Jul 2016 16:58:54 +0530
Message-ID: <CAA2DH4tNgMz6Y0qU=J+ASrBJpaR7Hboj2D9CX-RqXmN8=dHA1Q@mail.gmail.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Customize hddimg
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
X-List-Received-Date: Tue, 26 Jul 2016 11:29:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi,


I'm building an image for intel board (but I think this is a generic
query so I'm posting here).


I would like to modify the hddimg that is generated. I want to add
some of my files.
How can I extend bootimg.bbclass in my custom layer?


Regards, Pj

