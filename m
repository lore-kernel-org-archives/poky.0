Return-Path: <trini@konsulko.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECBCBE00B8E; Wed,  7 Jun 2017 17:43:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f169.google.com (mail-yb0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7588DE00B27
	for <poky@yoctoproject.org>; Wed,  7 Jun 2017 17:43:19 -0700 (PDT)
Received: by mail-yb0-f169.google.com with SMTP id o9so6421689yba.3
	for <poky@yoctoproject.org>; Wed, 07 Jun 2017 17:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=konsulko.com; s=google;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=aLJ9QWhdfue4PAi7q9L9MLlQaXfC+lsWvMKia+bIVQ4=;
	b=LXiMp06ncrUEyaIJYHnq4bDH8OMW3u/DQlHFRr6Y+bBaKY5GqdurMbfbDvZc2vZp8c
	Z8hv3WdD+j47ncMajZl5/Eif10uIuqDFBan02OS7+mk8vfVL1KfsWYXtia5p7ekZN/Up
	4Wa9RYdItkpdMlTrqq+fdeAXZrrdskV6nS6sI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=aLJ9QWhdfue4PAi7q9L9MLlQaXfC+lsWvMKia+bIVQ4=;
	b=j7xZblzIDV/Ylx7qnb2i+ifwPW1jDtQrGclt80aFAlhuzxJKxCcQTty+yYmM4p8FTl
	vtLrGhI1qlfgwpavZrwpuDMyg9FNi5/FFI7Y2O0U9bqDN8Y497MHnxeiLC9iPGRNPTNs
	8MV6mpolZS6hxsnwB/nBg/NhsxQhUeYbLftNRwGXHyiNjgYdB6uDwc3G0BCZsJTZR0UZ
	piEDNW2hbsNz9uiRA/wBCJ4dj7WpHzRedb14v29jToVoS3ldPJrst/sXMLZP8LyDEE1f
	H33hVVcLCjC2bAd8oOdXQ8tDcLkUxBhBcnAz0IZqv7WLA8/QpD06nOjoqqiheKaPlqzX
	KSdw==
X-Gm-Message-State: AODbwcBUlXYmaVeqSrEy7GLsgoIlNXkk0yybzraTK/ZsTjbtEnF/2Tii
	zCA6+lpMGjwQDbAB
X-Received: by 10.37.198.193 with SMTP id k184mr4869514ybf.186.1496882599253; 
	Wed, 07 Jun 2017 17:43:19 -0700 (PDT)
Received: from bill-the-cat (cpe-75-180-228-133.ec.res.rr.com.
	[75.180.228.133]) by smtp.gmail.com with ESMTPSA id
	x14sm1925142ywx.54.2017.06.07.17.43.18
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Wed, 07 Jun 2017 17:43:18 -0700 (PDT)
Date: Wed, 7 Jun 2017 20:43:33 -0400
From: Tom Rini <trini@konsulko.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20170608004333.GH10782@bill-the-cat>
References: <CAJTo0LYUEgJgU03xxhi2ke3SspsEs0_JPcX4yiBaVbF6p-saUQ@mail.gmail.com>
	<1496838489-25242-1-git-send-email-ed.bartosh@linux.intel.com>
	<1496838748.6630.214.camel@linuxfoundation.org>
MIME-Version: 1.0
In-Reply-To: <1496838748.6630.214.camel@linuxfoundation.org>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: poky@yoctoproject.org
Subject: Re: [PATCH v2] u-boot: enable dhcp for MPC8315 board
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
X-List-Received-Date: Thu, 08 Jun 2017 00:43:22 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed, Jun 07, 2017 at 01:32:28PM +0100, Richard Purdie wrote:
> On Wed, 2017-06-07 at 15:28 +0300, Ed Bartosh wrote:
> > Getting ip address from DHCP server is much more convenient
> > than setting static ip. It allows to configure u-boot in
> > more generic way and to avoid hardcoding static ip in
> > u-boot configuration.
> > 
> > Enabled dhcp client functionality for Yocto reference
> > hardware MPC8315E-RDB.
> > 
> > Signed-off-by: Ed Bartosh <ed.bartosh@linux.intel.com>
> > ---
> >  meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-DHCP.patch | 12
> > ++++++++++++
> >  meta/recipes-bsp/u-boot/u-boot-common_2017.01.inc           |  4
> > +++-
> >  2 files changed, 15 insertions(+), 1 deletion(-)
> >  create mode 100644 meta/recipes-bsp/u-boot/files/MPC8315ERDB-enable-
> > DHCP.patch
> 
> These files are in OE-Core, not meta-yocto but you sent them to the
> poky list?

And really ought to be upstreamed? :)

-- 
Tom

