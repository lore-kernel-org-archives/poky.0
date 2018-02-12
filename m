Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD57AE00E15; Mon, 12 Feb 2018 12:16:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1265AE00DD0
	for <poky@yoctoproject.org>; Mon, 12 Feb 2018 12:16:23 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id t4so7174055pgp.8
	for <poky@yoctoproject.org>; Mon, 12 Feb 2018 12:16:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=6qumvlso5v8X62T96NW9TgjXYKi5VCGLvaFQOa+Uakc=;
	b=MbX+e2LGDUvDP5OAHUO1mV8xxn5KKCEWDRWzPjqNh8DXbTKdUWGXQHfJeA1mVTRIjL
	wIJzbbu5Wc/LtFlPyaQBSdEoVaEiW8/+NWirqukTle64zOMJyONNZlmaQ2m3bUtmAS08
	4tZRhc6KC5ziBPM2b462ww65C9g3N+xXFBXssAEJx0th0vrMFtSGClEUFfJyll7ZuTY3
	u6sZB5WNkvlbNdQyEN92L/wwkZlD/jj1IVbpzJm7mTqodxLBXqjTEzp0ahpELxLvek/K
	PekzRJHLTOli77iR/24VK6TXmXPVeSMqNDflRRd7q/sF/Pqn5GLF66VxlaAH/68qN4Yz
	t0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=6qumvlso5v8X62T96NW9TgjXYKi5VCGLvaFQOa+Uakc=;
	b=DOcMFhKw3x7m9kp1u5z0hS3J+VUk4O1cm4vJ5doBQ1kdx8Hn1mIJuA8S8Kyyoi7+jd
	BvNMeHEcFwS4XKx/S1th4/zVUeG0KQH6Q1rMx9zDqHZ2juVuDWJPqJCNGxV3luH3ZOnM
	WHPzWKvg3xRs746hU28L+OMJ43ZrUU2ktwBbb+m/NvGpZ2o4LVB/5+hzPAwqv2PA0YC6
	Kvgqu6pJMybdQkCOSQZfucksMs04s3mXy+37aBkqGB1lie36y8y9JIV9IV0BQru2oi0E
	XuNS9usjq5H+6ROuiHe8yh8YAPTPaaSgEdosVBT4CG9Ofi8BK3A/t4XdkRGctsJuJTnV
	HwdA==
X-Gm-Message-State: APf1xPBfTFHVbDAQa0WlEFWbndC++CXsWi7trJ0yT04S7MmjDMtgRHj7
	Rkty6a68C9ahfrGDVklkx+pn4VyyebuecGZD3PU=
X-Google-Smtp-Source: AH8x2279NkKN7JgFuECsIUfwXJAEkwQUJfAXZQWEzMbw5Jjds0N/6wzygRTd6ZftUG2TSbXUBUUL0F6VDdiax0yEtNA=
X-Received: by 10.98.189.8 with SMTP id a8mr12711168pff.125.1518466583219;
	Mon, 12 Feb 2018 12:16:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.161.170 with HTTP; Mon, 12 Feb 2018 12:15:52 -0800 (PST)
In-Reply-To: <967D67AEC428424E83B5D1DABFB91AA3863A93FFF0@THSONEA01CMS13P.one.grp>
References: <967D67AEC428424E83B5D1DABFB91AA3863A93FFF0@THSONEA01CMS13P.one.grp>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 12 Feb 2018 12:15:52 -0800
Message-ID: <CAMKF1srmrb77JHnER3VyoWeyyv=Px=3M6ps2MWtwm4H4rXsBeA@mail.gmail.com>
To: DI SCHIENA Eric <eric.di-schiena@thalesgroup.com>
Cc: "poky@yoctoproject.org" <poky@yoctoproject.org>
Subject: Re: Build rpi-basic-image Pi3 with kernel-devsrc error : conflicting requests nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3
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
X-List-Received-Date: Mon, 12 Feb 2018 20:16:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2018 at 8:43 AM, DI SCHIENA Eric
<eric.di-schiena@thalesgroup.com> wrote:
> Hello,
>
> I=E2=80=99have tried to generate rpi-basic-image for a Pi3 using Rocko br=
anch of
> poky.
>
> I succeeded doing it but when I added the following variable in my
> conf/local.conf:
>
>
>
> TOOLCHAIN_TARGET_TASK_append =3D " kernel-devsrc"
>
>
>
> Then I got following issue:
>
>
>
> Problem: conflicting requests
>
>   - nothing provides /bin/awk needed by kernel-devsrc-1.0-r0.raspberrypi3
>
>
>
> My host is an Ubuntu 14.04LTS (under VirtualBox)
>
>
>
> I spent quite a lot of time to found out what happens by googling  but
> unfortunately I did not find a solution.
>
> Can anybody help me ?
>
>

Please cherry-pick
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto/commit/?id=3D8af11c1c=
dd8fa08217e702b57cf96e9030db52b2

to linux-raspberrypi kernel recipe and if it works, propose it for
meta-raspberrypi

>
> Regards
>
>
>
>
>
>
> --
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

