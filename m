Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72E48E00825; Sun, 20 Dec 2015 13:59:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f178.google.com (mail-io0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4971E00825
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:59:46 -0800 (PST)
Received: by mail-io0-f178.google.com with SMTP id q126so137918361iof.2
	for <poky@yoctoproject.org>; Sun, 20 Dec 2015 13:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hLrtwAYLN2ax+VKVs8zc7BOsx3YhM6oHQOEmeot7SXY=;
	b=SgCSCYdYcJ3HsLtYA3uyGC/D0V88Yrl8hQt5fKwwJjUSY0ya7rfbQ7K2mQP0ZBMl3g
	tNYNTrRPNypDYQ65eBl+F9cg59m5Dctg6Ay4AIvfnVz2XInUkjpcK6Rk0S5ZUiBLsb3O
	LPdDcs0oSwx4ObrQH/gDLoMj+n2T90P/jnhlqy6I4mkoU4AWlERWhv+NIb4TcyJUSquT
	uUvSCnIrooR5p4NQ4a8s08huWloen89HuY++SBiq4b2cC+yd7iPeYqsti0ygjS6rJa/E
	cmsMiLcErLj7EzcLvKxQjxIseBPkWhU+bwXxpXTgE32qYxvWg1HUFl9B3CX3csyIZ+xQ
	MUBA==
X-Received: by 10.107.9.224 with SMTP id 93mr15297537ioj.112.1450648785730;
	Sun, 20 Dec 2015 13:59:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 13:59:16 -0800 (PST)
In-Reply-To: <570D83C9-C437-43C6-AE0A-F5A0C0794C52@freyther.de>
References: <07C4FC01-05D3-4413-8CF7-EC51DC4493CA@freyther.de>
	<570D83C9-C437-43C6-AE0A-F5A0C0794C52@freyther.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 13:59:16 -0800
Message-ID: <CAMKF1sqguLafzRoV5bNKEDnNTwqYJCaB_xX4unuvsVKTFV9LPQ@mail.gmail.com>
To: Holger Freyther <holger@freyther.de>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: rootfs growth from dora to master
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
X-List-Received-Date: Sun, 20 Dec 2015 21:59:47 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 9:13 AM, Holger Freyther <holger@freyther.de> wrote:
>
>> On 20 Dec 2015, at 14:49, Holger Freyther <holger@freyther.de> wrote:
>>
>> Good Afternoon
>>
>> What is the standard approach here? Review PACKAGECONFIG and disable features, manually
>> increase the packagesplit to remove items (e.g. udev PCI id db when there are no PCI ids)?
>
> Using PACKAGECONFIG and removing x11 from DISTROFEATURES I get the image down to 8.2MB
> and by passing some more --disable to systemd itself the image is 7.6MB. This is currently enough to fi
> in our rescue partition but still a significant increase compared to Dora.
>
> Is there interest in maintaining older versions of systemd or having a size requirement that certain images
> need to stay below XYZ MB for a given architecture?

In my view, its better to find more PACKAGECONFIGs and reduce the size
than to stick to older version
I think we can convince systemd upstream on configure options if new
are needed. I have done something like

something like below is what I have with systemd 216 and the size came
down for ipk from ~10M to 5M

EXTRA_OECONF += "--enable-introspection=no \
                 --enable-gtk-doc=no \
                 --enable-gtk-doc-html=no \
                 --enable-gtk-doc-pdf=no \
                 --enable-address-sanitizer=no \
                 --disable-seccomp \
                 --disable-selinux \
                 --disable-apparmor \
                 --disable-xz \
                 --disable-pam \
                 --disable-acl \
                 --disable-smack \
                 --disable-gcrypt \
                 --disable-audit \
                 --disable-libcryptsetup \
                 --disable-qrencode \
                 --disable-microhttpd  \
                 --disable-quotacheck \
                 --disable-vconsole \
                 --disable-logind \
                 --disable-machined \
                 --disable-hostnamed \
                 --disable-timedated \
                 --disable-localed \
                 --disable-polkit \
                 --disable-networkd \
                 --disable-efi \
                 --disable-manpages \
                 --disable-tests  \
                 --disable-backlight \
                 --disable-rfkill \
                 --disable-multi-seat-x \
                 --disable-ima \
                 --disable-xattr \
                 --disable-maintainer-mode \
                 --disable-nls \
                 --disable-binfmt \
                 --disable-gudev \
                 --disable-python-devel \
                 --disable-kmod \
                 --disable-blkid \
                 --disable-chkconfig \
                 --disable-tcpwrap \
                 --disable-readahead \
                 --disable-bootchart \
                 --disable-randomseed \
                 --disable-coredump \
                 --disable-myhostname \
                 --without-python \
                 --disable-dependency-tracking \
                 --enable-silent-rules \
                 --enable-shared \
                 --disable-dbus \
                 --enable-compat-libs=no \
                 --enable-coverage=no \
"

>
> holger
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

