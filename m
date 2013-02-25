Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 94629E00429
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:47:51 -0800 (PST)
Received: by mail-ve0-f175.google.com with SMTP id cy12so2370630veb.6
	for <poky@yoctoproject.org>; Mon, 25 Feb 2013 09:47:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=mT3EKWNJ4t9K0/WAvj9ANmxigQL0j00QGbKRCBGd/bo=;
	b=BQ64pZRVTzQ/THgyDMLGCs0g9s+4YjmXkTomoolDEGK59gqrrbqSgm5610JRRVKjbJ
	enwckmBqbWGdAExvnZueRfyAGldHOjM2MD/E9iOiw9RjFftS9L4LA9+slJ93sEurKAKn
	7PtGhhr3/7mJ+mBXonYsgvFeHY0AMUI12b6kLNc7/sdKiq/MBn8TLlHCQvuB88e6eV4A
	72+25xTsiPliaaQEOGmsusZbJTiYW0h1ph1rt8yajN8LeVK0MCh6Cq1ePMb8qa8pPyQv
	OyYLVC7MaDrri47gAGK5ZzMORq6dq13k9Q7iCAIfE2unmNwuttlGlxN/33uW7Hxa4Zd3
	LHqA==
X-Received: by 10.52.91.39 with SMTP id cb7mr8841393vdb.71.1361814470656; Mon,
	25 Feb 2013 09:47:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.77.105 with HTTP; Mon, 25 Feb 2013 09:47:30 -0800 (PST)
In-Reply-To: <512BA2A6.1070905@linux.intel.com>
References: <CAK18fxEj1UYMV21aOLfbMpVOfGYuSCgUj0b_ArADsHCJbUkLYA@mail.gmail.com>
	<512BA2A6.1070905@linux.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Feb 2013 17:47:30 +0000
Message-ID: <CAJTo0LZEkT7SJEAedGv4TKz7DEFoi+3oHbm-qsaW1jp+xxkbwg@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Gm-Message-State: ALoCoQn5zOBKxHtd/BAbWAadnTZaCm9GWdPnrLscXgOw7i/LSmjZT70Ee/OUEWKKnCOmd86dVQRN
Cc: poky@yoctoproject.org
Subject: Re: Error when removing dependency with oe_filter_out
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
X-List-Received-Date: Mon, 25 Feb 2013 17:47:51 -0000
Content-Type: text/plain; charset=UTF-8

On 25 February 2013 17:43, Saul Wold <sgw@linux.intel.com> wrote:
> Can you put a space in the filter_out above?  I have not tried that, but
> what's happening in the filter out is finding the "db" part of "gdb" and
> removing it from the depends line for the cross tools.
>
> Try " db" or some such.

Actually, looking at the source (lib/oe/utils.py), it does this:

    return " ".join(filter(lambda x: not match(f, x, 0), str.split()))

So " db" won't work, but "^db$" will.

Ross

