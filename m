Return-Path: <kergoth@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1772E006C7
	for <poky@yoctoproject.org>; Fri,  4 May 2012 07:42:19 -0700 (PDT)
Received: by werc12 with SMTP id c12so2453676wer.35
	for <poky@yoctoproject.org>; Fri, 04 May 2012 07:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=0nV9m5AYrZ+YWOc1c27JWnoXCosxz0YhYsslgWvNaDY=;
	b=wXhwQ4J9LizPJ9FPznaU9Ayj7bdvBgV5w+NrgcZWU5O2BQSV7X2T5zF4MgcUu078H1
	EWslrKiENsy82XpJBt6LecPE6WfrDxC8ib9NEwahDRsz2eXw0UNBURB2mn3vBuAQ6eaZ
	qo6bM1mLJYySp8NRYLZgvF0Ub0C7nX6DgaXlSdjDYQzRphf9dqDNUEgppK4mD6+GAcmR
	53lTWQiM73mupgkzkO4iq//etTXIl4ouTej3RhZpo3Tb8BDdHHU64NKANivX28Ck+AP/
	hve0PPAzut8zD/Ae7Fy6ChJvOlrNJvMtKNrd41zW9aMrEqpJCxBvqrDJqzGIMk2PvTdy
	lpRA==
Received: by 10.180.104.231 with SMTP id gh7mr13566585wib.10.1336142538640;
	Fri, 04 May 2012 07:42:18 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.27.148 with HTTP; Fri, 4 May 2012 07:41:58 -0700 (PDT)
In-Reply-To: <4FA3E329.5000005@mlbassoc.com>
References: <4FA3E329.5000005@mlbassoc.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 4 May 2012 07:41:58 -0700
X-Google-Sender-Auth: e7ftlhC6gEpiwXyIbszPgyk8nMM
Message-ID: <CABcZANnWTsQVHYvLQ=2aHyZ77jC=rS=AexALmsxQA4u42krkKQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Setting busybox options/configuration
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
X-List-Received-Date: Fri, 04 May 2012 14:42:20 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, May 4, 2012 at 7:09 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> I recall seeing some discussion about this, but not the conclusion.
> Is there a way to [easily] override/adjust the busybox configuration?
> In particular, I'd like to override CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS
> to settings that are more appropriate for my hardware.
>
> Currently, I'm just editing the config file using this snippet in
> a .bbappend file:
>
> do_prepare_config_append () {
> =C2=A0sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS=3D"-R
> -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS=3D"-R -n -T 1 -t 20"/' ${S}/.confi=
g
> }
>
> Crude, but it works. =C2=A0If there's a better way, I'll gladly use it.

Would be nice if we could leverage linux-yocto config snippets here,
at some point.
--=20
Christopher Larson

