Return-Path: <hieberm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5C6DE00D97; Thu,  5 Oct 2017 19:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hieberm[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84D92E00D91
	for <poky@yoctoproject.org>; Thu,  5 Oct 2017 19:03:18 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id s14so3334950qks.6
	for <poky@yoctoproject.org>; Thu, 05 Oct 2017 19:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1JCkCV6XEkCLdhOZCPzGxt4pS5k7pe6U+c5lsqEGdDc=;
	b=gHotJgRaRedkv/8bRokCMJgg6r61AF75BUfNA5HOMPG8OZ1HnDBwX/0CB616h1EM+a
	lnQJzGoMp2jLKi9UzCKyVDNigxXrs+X7OHdttOdkVxLWcpNFlNeam0C2Ar5oKjqHfzFF
	oX8CRicaqpGBynlkRDnu+U4nTnrt2bQffEsG/7l1EF7XufUvn6XwMd0+7eB/O4eCu6nE
	FMmyYTjgIJobGz8Tr8WdsGDrV+HtSj2cwOC2ljUXyG8uMVE3vbTqriSsgfXv2i4IlrCp
	2LkxyaYMUioX8qhjf+AncI39yzzKT4ld7wprwYwwp1GXZZM7T8BXIcYhcaQSXEkcAPX4
	i2bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1JCkCV6XEkCLdhOZCPzGxt4pS5k7pe6U+c5lsqEGdDc=;
	b=o3xU3h6CCeO3gUE4uixM2U3016cx4bX5Jk43uCT4SX5IjeL4RIj9i76ulf2K0qVRsB
	8X1x0VxMZFLMj2oSP5V4EAIXPcH4+DgzxZP8KbGoZ95cwmZbhYqL0fTMvDJzD3X699Zg
	Y2uHb4/AeVSEkthJzVWt95NFOOm9Rnc5U6UOr1oefS5zE6AYS12i8YHRcRpXWpBA6e7R
	rsdQqW/p+PfAZzhbkFtYh50NIS2+kgj268OK5hjkJO245BveMWshjbzqh0KaeNZ0drfW
	X5SeoIETvIbdHWoazyAmbbzPpPf1Vup07gUuIVl/7CV84eSuIe4W/K4xKiQkJYnwyQwO
	41uA==
X-Gm-Message-State: AMCzsaULSggYWYjoI72liK3sXBc7XzwXB9x/413IycHN19fhCKwBpkGL
	WTXu1qMUmTEw7eyIBNZljGxJpvkJxgmhcEABc9s=
X-Google-Smtp-Source: AOwi7QCTJw2kvQlLAxDRTAcBKNQE/yNGQ2vwUQDUeHBxNpBEw7HCMazrE3AHrMUYKn4KBgf7KfQdSuWlMS1z2g0qEV4=
X-Received: by 10.55.220.3 with SMTP id v3mr15561803qki.134.1507255397470;
	Thu, 05 Oct 2017 19:03:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.96.34 with HTTP; Thu, 5 Oct 2017 19:03:16 -0700 (PDT)
From: Mark Hieber <hieberm@gmail.com>
Date: Thu, 5 Oct 2017 19:03:16 -0700
Message-ID: <CAPxJQ9F6rWcZjFz2w-mB11ArQBNKyAtkR3PrEryq5BTpteEatg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Creating a .img file from artifacts of yocto
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
X-List-Received-Date: Fri, 06 Oct 2017 02:03:18 -0000
Content-Type: multipart/alternative; boundary="94eb2c0cc0ce8d56b1055ad73ede"

--94eb2c0cc0ce8d56b1055ad73ede
Content-Type: text/plain; charset="UTF-8"

I am able to create a build using yocto, I would like to now use the build
artifacts to create a .img or .raw file. What is the recommended way to do
this with or in yocto? Does WIC help me here?

Thanks,

Mark

--94eb2c0cc0ce8d56b1055ad73ede
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am able to create a build using yocto, I would like to n=
ow use the build artifacts to create a .img or .raw file. What is the recom=
mended way to do this with or in yocto? Does WIC help me here?<div><br></di=
v><div>Thanks,</div><div><br></div><div>Mark</div></div>

--94eb2c0cc0ce8d56b1055ad73ede--
