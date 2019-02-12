Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E7B7E00CBA; Tue, 12 Feb 2019 02:22:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E772E00546
	for <poky@yoctoproject.org>; Tue, 12 Feb 2019 02:22:31 -0800 (PST)
Received: by mail-it1-f172.google.com with SMTP id a6so6179954itl.4
	for <poky@yoctoproject.org>; Tue, 12 Feb 2019 02:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=40g/2juaOldte4fSLAF7q+5RAtI9u+/FiYhuteh1rvs=;
	b=jVyPRTChsDfWYYM+8jLLAsYMdpeRcZy7svClArKHJe8puKWfatWol300SlcHtwPcdI
	0UOHOeTeLDi5dMN3+PdD8/NPbSYNitput52pEIxhTrFZYTi0UEgOV+E2vvUQYEU9GHPc
	/LxsGuZbIEk+6cwUaQ2LjYIlaKIWgaqaw/kuuyMnNbzzy076OdhVH1/ecJ7zxr0pP4bD
	yUXv4XrXQDBLUv3xR4EJfgOWiYE9wKAObha7ahyodpWEtf5+tWJDqqHgSlsWnhBayZkT
	tDBIK7EhY3eQ4xpWgDu4UG5cYgOhwkhSLl0sV+9g05TH1Fd72T6eK5ZsWk0EDdEHEJlh
	4jEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=40g/2juaOldte4fSLAF7q+5RAtI9u+/FiYhuteh1rvs=;
	b=Um0DiN4lxIfI4YlQ4+yJKIiO71NR+gc5df13DAtAjFJjOF0OxdA/MlcBtQO0PzbqC0
	NhUMQzuKwpUTjlfrFImwdWB4X1Ax1UtHUC8vfbqJFnF0NUJHTxzFzolwChP4Pf+FXSeR
	dpsekYkF5GM7YEE0V6dx1FbendG9NLDm1dm09D1nNkh56u6dHRGRiV+UPc/eAXyrhT/Z
	F0m5wtaUB8Q3w6tBpEi9up2LglN2G4mz1DGG36g6YDAwnSlNRc56EuHIUTHk528J1M6T
	LFh+WQiLgmRzdZIJBUoZYVvd+7quoQ6PMSr29dEVauQ/WwvR7AucVSLaZLxBlzpzlreh
	Y24w==
X-Gm-Message-State: AHQUAuZuugrFPWn2XqRBfFAjnjrQD1iNaJ2B/cftRRg91/rGD9PLb8cc
	B64v6kRGF1Jd/fnoW3i3KVC2IZXNvHr7aP+tJIJcIw==
X-Google-Smtp-Source: AHgI3IaygMe0e6ovJ3FOaavjrHEMVKoegyU3mDmXzsGKpxRIMn8LyEpJhxMF+aJ7B+C1W/Zw1qhTYiv18d0uTlMzfmU=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr1296466itj.62.1549966950707;
	Tue, 12 Feb 2019 02:22:30 -0800 (PST)
MIME-Version: 1.0
References: <CAH5YvUtMEkHQCGZvrnviknkmwQBc_gVNC3cd2f7qb=kCCfk3Kw@mail.gmail.com>
In-Reply-To: <CAH5YvUtMEkHQCGZvrnviknkmwQBc_gVNC3cd2f7qb=kCCfk3Kw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 12 Feb 2019 10:22:19 +0000
Message-ID: <CAJTo0LbUuk-EUKwMiemP34dhz51f++qM-psFskqx8bYimoD--Q@mail.gmail.com>
To: Madhu B <madhu1313b@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Getting an syntax error with 'sed' in systemd-serialgetty.bb
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
X-List-Received-Date: Tue, 12 Feb 2019 10:22:32 -0000
Content-Type: text/plain; charset="UTF-8"

That looks reasonable to me, can you send it as a proper patch
(git-send-email, nice commit message, signed-off-by tag) to
openembedded-core@lists.openembedded.org?

Ross

On Tue, 12 Feb 2019 at 06:42, Madhu B <madhu1313b@gmail.com> wrote:
>
> Hello everyone,
>                        While trying to build the AGL image, I am getting an syntax error lik e "sed: -e expression #1, char 19: unterminated `s' command".
>
> With the below patch, I resolved that syntax error.
> diff --git a/meta/recipes-core/systemd/systemd-serialgetty.bb b/meta/recipes-core/systemd/systemd-serialgetty.bb
> index d934716..78b07c2 100644
> --- a/meta/recipes-core/systemd/systemd-serialgetty.bb
> +++ b/meta/recipes-core/systemd/systemd-serialgetty.bb
> @@ -17,7 +17,7 @@ do_install() {
>                 install -d ${D}${systemd_unitdir}/system/
>                 install -d ${D}${sysconfdir}/systemd/system/getty.target.wants/
>                 install -m 0644 ${WORKDIR}/serial-getty@.service ${D}${systemd_unitdir}/system/
> -               sed -i -e s/\@BAUDRATE\@/$default_baudrate/g ${D}${systemd_unitdir}/system/serial-getty@.service
> +               sed -i -e 's/\@BAUDRATE\@/$default_baudrate/g' ${D}${systemd_unitdir}/system/serial-getty@.service
>
>                 tmp="${SERIAL_CONSOLES}"
>                 for entry in $tmp ; do
>
> Is it really missed or am I missing anything?
>
> Regards,
> -Madhu.
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky

