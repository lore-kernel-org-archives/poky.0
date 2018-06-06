Return-Path: <nick83ola@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC8B0E01268; Wed,  6 Jun 2018 01:48:32 -0700 (PDT)
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
	*      [209.85.218.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF0CAE01264
	for <poky@yoctoproject.org>; Wed,  6 Jun 2018 01:48:31 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id c128-v6so4685613oig.11
	for <poky@yoctoproject.org>; Wed, 06 Jun 2018 01:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Z49l836Qo6Jb7p6yViEbA2FAJPGqJxK0wnLs7KUoa8A=;
	b=shGGCCNI3CxK2puHXuGzCOOOo+GI+GX3gwNCx9oVD4sMuC2kUZiHiuaL1JKsKAppK4
	7lZm2w0Qu3riRhFzx/IespUDag+LwKzgh1m6vF0UQhHeU/buWW/AW9R9ZdlYOIoG/YMm
	KEKfzDRKEMv9Pco+zm/eEz1wP5/OoNq6LJcRioFfd7Cwjdv0g+bcfYEXxBG2frHaXtDU
	jlhKZYA0vvvxlWbCx2h26pB24fmaNjOt9/aBDtcVxEtmBbbzfie9e4Iycr9HA05+gXhH
	qO/CuW1bVJzEZprqCyfbRaLa96uYLmpA8MyT01R8Dty9s8s+L6VNY1aWGhUabISKOYHL
	wnvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Z49l836Qo6Jb7p6yViEbA2FAJPGqJxK0wnLs7KUoa8A=;
	b=Dk78VxbpKDBwnd+DEkXw+d8dKKETBTHv9qV1LJJgxmpD/Rp4yvDm5uVrA+iuSuPgRk
	afmSDYZljONd1ElOm+JxLC544740iOm8gYtbqK9uzA7OdiSKDsE9GqzsMO2NFj4uVi3E
	PRk90S/YQs+Yb5eJ5dkekzKYOsH6965sE5ULZKBjTs/H28XlgttLmDyIOhZ872i8FqRU
	MvgJ5tnizqk2eddpse1zjrG6TVdLV8Am/i2Psnr8bGJ7ECkHwir+r7iVXOq0TAlhGjyR
	IobSCbym+mbnq1bF7wgHCKu5wH3fVzqA2v6yk2jWUtYlyezShhJz1FCeUg8cHAVJcJCB
	8+ZA==
X-Gm-Message-State: APt69E2X686+MdbsELWEfW4J9DukjNTq7g68vpVR57Rxe+ebjB18dGEv
	H60ZwuB3CGNhDKqxjQjYhLxwuHflnR6wmAVU3WU=
X-Google-Smtp-Source: ADUXVKLppHk58RBnLUQS0ZZBrwGiHG5MBUfp/P8viTnjTrozrrUP3aHqZusPWGd9I+GC10tkjSQzF+jmgY44z5qncI0=
X-Received: by 2002:aca:d4c1:: with SMTP id
	l184-v6mr1222902oig.325.1528274910810; 
	Wed, 06 Jun 2018 01:48:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:5f8d:0:0:0:0:0 with HTTP;
	Wed, 6 Jun 2018 01:48:10 -0700 (PDT)
In-Reply-To: <CABPh3UMsooqLDJ+Aq1DiObxoi12a2Oj68nO51ALjgBet2SwkAw@mail.gmail.com>
References: <CABPh3UMsooqLDJ+Aq1DiObxoi12a2Oj68nO51ALjgBet2SwkAw@mail.gmail.com>
From: nick83ola <nick83ola@gmail.com>
Date: Wed, 6 Jun 2018 09:48:10 +0100
Message-ID: <CABPh3UNYziLzCSJZA==MeA_fyAQzXR4RGbSmVqsfP0M7-VZkbA@mail.gmail.com>
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
X-List-Received-Date: Wed, 06 Jun 2018 08:48:33 -0000
Content-Type: text/plain; charset="UTF-8"

ping

On 30 May 2018 at 14:24, nick83ola <nick83ola@gmail.com> wrote:
> systemd: resolved linked even if the option is disabled
>
> in the do_install function in systemd recipe the condition to check
> if the resolved option is selected is reversed (wrong !).
> This is for example true if we compile systemd with musl instead of
> glibc (every poky-image-minimal recipe).
>
> Also no link should be created if the option is not selected
> nor an ALTERNATIVE set.
>
> Signed-off-by: Nicola Lunghi <nick83ola@gmail.com>
> ---
>  meta/recipes-core/systemd/systemd_237.bb | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/meta/recipes-core/systemd/systemd_237.bb
> b/meta/recipes-core/systemd/systemd_237.bb
> index 2e6558ded1..2eea6af508 100644
> --- a/meta/recipes-core/systemd/systemd_237.bb
> +++ b/meta/recipes-core/systemd/systemd_237.bb
> @@ -256,14 +256,11 @@ do_install() {
>      if [ -s ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf ]; then
>          ${@bb.utils.contains('PACKAGECONFIG', 'networkd', ':', 'sed -i -e
> "\$ad /run/systemd/netif/links 0755 root root -"
> ${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf', d)}
>      fi
> -    if ! ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
> d)}; then
> +    if ${@bb.utils.contains('PACKAGECONFIG', 'resolved', 'true', 'false',
> d)}; then
>          echo 'L! ${sysconfdir}/resolv.conf - - - -
> ../run/systemd/resolve/resolv.conf'
>>>${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
>          echo 'd /run/systemd/resolve 0755 root root -'
>>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
>          echo 'f /run/systemd/resolve/resolv.conf 0644 root root'
>>>${D}${exec_prefix}/lib/tmpfiles.d/systemd.conf
>          ln -s ../run/systemd/resolve/resolv.conf
> ${D}${sysconfdir}/resolv-conf.systemd
> -    else
> -        sed -i -e "s%^L! /etc/resolv.conf.*$%L! /etc/resolv.conf - - - -
> ../run/systemd/resolve/resolv.conf%g"
> ${D}${exec_prefix}/lib/tmpfiles.d/etc.conf
> -        ln -s ../run/systemd/resolve/resolv.conf
> ${D}${sysconfdir}/resolv-conf.systemd
>      fi
>      install -Dm 0755 ${S}/src/systemctl/systemd-sysv-install.SKELETON
> ${D}${systemd_unitdir}/systemd-sysv-install
>
> @@ -537,7 +534,7 @@ python __anonymous() {
>  # TODO:
>  # u-a for runlevel and telinit
>
> -ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel
> resolv-conf"
> +ALTERNATIVE_${PN} = "init halt reboot shutdown poweroff runlevel"
>
>  ALTERNATIVE_TARGET[init] = "${rootlibexecdir}/systemd/systemd"
>  ALTERNATIVE_LINK_NAME[init] = "${base_sbindir}/init"
> @@ -563,6 +560,7 @@ ALTERNATIVE_TARGET[runlevel] =
> "${base_bindir}/systemctl"
>  ALTERNATIVE_LINK_NAME[runlevel] = "${base_sbindir}/runlevel"
>  ALTERNATIVE_PRIORITY[runlevel] ?= "300"
>
> +ALTERNATIVE_${PN} += "${@bb.utils.contains('PACKAGECONFIG', 'resolved',
> 'resolv-conf', '', d)}"
>  ALTERNATIVE_TARGET[resolv-conf] = "${sysconfdir}/resolv-conf.systemd"
>  ALTERNATIVE_LINK_NAME[resolv-conf] = "${sysconfdir}/resolv.conf"
>  ALTERNATIVE_PRIORITY[resolv-conf] ?= "50"
> --
> 2.17.0
>
>

