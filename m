Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1E51E00576; Tue, 22 Jul 2014 06:03:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 849B7E0054C
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 06:03:19 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id q107so6951313qgd.12
	for <poky@yoctoproject.org>; Tue, 22 Jul 2014 06:03:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=cJV8tB2QG0MHj3cm0Hszeyuf4GyYrA0D3zr4eLFjGYY=;
	b=MG/YQCNvOkZqCGmEdqstZ0aZaF9Ouh/3sRzyVzailTZdbv3Mln1xC18x2LsyMZ/G18
	ChcbqOc+0xYskPgMpVayF/YDKOgpp6dwVljg4wF8X/QvNyjEYvXkb2ufAYvqi6wQ7a9B
	lwK1UjMWhcqy997XuTB/bvmZCBMsxg44fK7rXdVSR32RLIXjwugOms9FIQDTSBA9I/JQ
	bpRjyPauMEMs26cyl3HS0TDxdlT3FQWHjJ0dtaBq+Ho0DkZp9boCpaJsAjCoAKe8vzn0
	sY8xUuKCUkLjtdNqaJFRIiHr11L/3du/jf+t/JtHrm4N4J2USyZM3qwaCf62uN1nf1Ch
	8EGg==
X-Gm-Message-State: ALoCoQnUKGxWEuw88YlgK5Zczh2YyIYDJLqvdAz4rBpgN0JYNhOmtjJrUUQdaPGnwRXXuBSrJJgE
X-Received: by 10.224.120.68 with SMTP id c4mr55501437qar.17.1406034198812;
	Tue, 22 Jul 2014 06:03:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Tue, 22 Jul 2014 06:02:58 -0700 (PDT)
In-Reply-To: <8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
References: <cover.1406024955.git.liezhi.yang@windriver.com>
	<8f203e49c4ecfc92eb09b175707f8dd7a6f0b546.1406024955.git.liezhi.yang@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Jul 2014 14:02:58 +0100
Message-ID: <CAJTo0La57nB9xrTNyo1vhQxea-CuC8di0pifYPVfy_rHc23MEw@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH 2/2] local.conf.sample: qemu-native DEPENDS libxext-naive
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
X-List-Received-Date: Tue, 22 Jul 2014 13:03:32 -0000
Content-Type: text/plain; charset=UTF-8

On 22 July 2014 11:31, Robert Yang <liezhi.yang@windriver.com> wrote:
> sysroots/x86_64-linux/usr/lib/libXext.so.6: undefined reference to `_XEatDataWords'

Context: that function was added to libX11 1.6, and numerous other
client libraries started using it to avoid security problems.  Older
hosts won't have it, but they also won't have libraries that are using
it.  So as far as I can tell the only way of replicating this is to
have a sysroot which contains libxext but not libx11.  Considering
libxext depends on libx11 that's not very likely.

What's your actual replication method?

Ross

