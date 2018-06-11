Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88F1DE00DE6; Mon, 11 Jun 2018 04:40:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nick83ola[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f169.google.com (mail-ot0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61B58E01DC0
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 04:40:33 -0700 (PDT)
Received: by mail-ot0-f169.google.com with SMTP id h6-v6so23375719otj.0
	for <poky@yoctoproject.org>; Mon, 11 Jun 2018 04:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=A6SSKPcBHohXyKV/o6/eavvzS2T7/wIt2SOq5SUCrSY=;
	b=vOVdhtd7d8KxVYPX7cY08BgxD7akT9cEicB8E4kON+nsVJe+CtJmRc6QFRIsyEBf1w
	XtD2prF3LPpNwsDAKeWzV8Phe2AKFyMalvTW0sLWnCJX+o3Vkky0uHQpEQbDhTEj9Ow1
	LQjYbuqin/bpcMrmnmnI6G7igWHFWIeYaFRw2t0w2eduTgnU5RxDiIx1IdORytWS54Si
	isaCgoU9CiCOPNbUuJSl3Y+IsFnJiY73QX5sV+gerUdAK9nc0B7iVIkuBqceeQJOCmr3
	/AexRBEOCxFZNrTPKz9DZ95EZms4/pv+7L69yUPay+AqVOFrG0utfcfkIS7sJsp7x4EL
	wtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=A6SSKPcBHohXyKV/o6/eavvzS2T7/wIt2SOq5SUCrSY=;
	b=H1xx11fyVCiDr5WURtrMK2Xt5o5po4VYVhUVb2o+tlVHJsbYQzTSrLJnfz4uIKgdFr
	EJeO297APx6QXElNEdbQYLtOAj3oU/252gNiho1hiw/Kh/5a3IJclb5czHt4feNE85QW
	DgkppqtwORe3xAaESd/VqaE/MiIGr3YiPYrtlTgpNAHEIHInIAw02ag2wIxFAsMA7/Zf
	sWS/84/bct4IpHt8P27r4j/+2O2NTFfJ9RkIg6wdxDPrEMNn27LfpoCr/OP+fE5ZRPO+
	rL6Y/6+MI6cO8W1XDA3Kr+OT04jZLQKlh+75ChTocHOIzFdfIj5No6/9rFRkJtyZ+ZIG
	Z7lA==
X-Gm-Message-State: APt69E17n1UV3OelY6sxm/4yNaHp/HQ1foX/v+qSrDIgbj6uG3HvjrCV
	XksQnEuBBL7zm1z/CJ0ZRX5tvvuLiKC18AKa8Nw=
X-Google-Smtp-Source: ADUXVKL04LMNtLxSLVZsLhvrTQFT/N5uQYh2NMMzfiAD/Z1VJAXkwLBqhwKAYVG7TgYAXiZqmz+/g8oJjWQwjo1NXgM=
X-Received: by 2002:a9d:300d:: with SMTP id
	d13-v6mr10337835otc.103.1528717232182; 
	Mon, 11 Jun 2018 04:40:32 -0700 (PDT)
MIME-Version: 1.0
References: <CABPh3UMsooqLDJ+Aq1DiObxoi12a2Oj68nO51ALjgBet2SwkAw@mail.gmail.com>
	<CABPh3UNYziLzCSJZA==MeA_fyAQzXR4RGbSmVqsfP0M7-VZkbA@mail.gmail.com>
In-Reply-To: <CABPh3UNYziLzCSJZA==MeA_fyAQzXR4RGbSmVqsfP0M7-VZkbA@mail.gmail.com>
From: nick83ola <nick83ola@gmail.com>
Date: Mon, 11 Jun 2018 12:40:20 +0100
Message-ID: <CABPh3UMUKFKmq78qUM6QPY4gEFHbW2AAb99c6d-ds_TEqW261Q@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Re: [PATCH] systemd: resolved linked even if the option is disabled
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
X-List-Received-Date: Mon, 11 Jun 2018 11:40:36 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Anyone can look at this?

Thanks
Nicola Lunghi

On Wed, 6 Jun 2018 at 09:48, nick83ola <nick83ola@gmail.com> wrote:
>
> ping
>
> On 30 May 2018 at 14:24, nick83ola <nick83ola@gmail.com> wrote:
> > systemd: resolved linked even if the option is disabled
> >
> > in the do_install function in systemd recipe the condition to check
> > if the resolved option is selected is reversed (wrong !).
> > This is for example true if we compile systemd with musl instead of
> > glibc (every poky-image-minimal recipe).
> >
> > Also no link should be created if the option is not selected
> > nor an ALTERNATIVE set.
> >
> > Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
> > ---
> >  meta/recipes-core/systemd/systemd_237.bb | 8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> >
> > diff --git a/meta/recipes-core/systemd/systemd_237.bb
> > b/meta/recipes-core/systemd/systemd_237.bb
> > index 2e6558ded1..2eea6af508 100644
> > --- a/meta/recipes-core/systemd/systemd_237.bb
> > +++ b/meta/recipes-core/systemd/systemd_237.bb
> > @@ -256,14 +256,11 @@ do_install() {
> >      if [ -s ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf ]; then
> >          ${@bb.utils.contains('PACKAGECONFIG', 'networkd', ':', 'sed -i -e
> > "\$ad /run/systemd/netif/links 0755 root root -"
> > ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf', d)}
> >      fi
> > -    if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
> > d)}; then
> > +    if ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
> > d)}; then
> >          echo 'L! ${sysconfdir}/resolv.conf - - - -
> > ../run/systemd/resolve/resolv.conf'
> >>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
> >          echo 'd /run/systemd/resolve 0755 root root -'
> >>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
> >          echo 'f /run/systemd/resolve/resolv.conf 0644 root root'
> >>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
> >          ln -s ../run/systemd/resolve/resolv.conf
> > ${D}${sysconfdir}/resolv-conf.systemd
> > -    else
> > -        sed -i -e "s%^L! /etc/resolv.conf.*$%L! /etc/resolv.conf - - - -
> > ../run/systemd/resolve/resolv.conf%g"
> > ${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
> > -        ln -s ../run/systemd/resolve/resolv.conf
> > ${D}${sysconfdir}/resolv-conf.systemd
> >      fi
> >      install -Dm 0755 ${S}/src/systemctl/systemd-sysv-install.SKELETON
> > ${D}${systemd_unitdir}/systemd-sysv-install
> >
> > @@ -537,7 +534,7 @@ python __anonymous() {
> >  # TODO:
> >  # u-a for runlevel and telinit
> >
> > -ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel
> > resolv-conf"
> > +ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel"
> >
> >  ALTERNATIVE_TARGET[init] = "${rootlibexecdir}/systemd/systemd"
> >  ALTERNATIVE_LINK_NAME[init] = "${base_sbindir}/init"
> > @@ -563,6 +560,7 @@ ALTERNATIVE_TARGET[runlevel] =
> > "${base_bindir}/systemctl"
> >  ALTERNATIVE_LINK_NAME[runlevel] = "${base_sbindir}/runlevel"
> >  ALTERNATIVE_PRIORITY[runlevel] ?= "300"
> >
> > +ALTERNATIVE_${PN} += "${@bb.utils.contains('PACKAGECONFIG', 'resolved',
> > 'resolv-conf', '', d)}"
> >  ALTERNATIVE_TARGET[resolv-conf] = "${sysconfdir}/resolv-conf.systemd"
> >  ALTERNATIVE_LINK_NAME[resolv-conf] = "${sysconfdir}/resolv.conf"
> >  ALTERNATIVE_PRIORITY[resolv-conf] ?= "50"
> > --
> > 2.17.0
> >
> >

