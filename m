Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5382DE00D5F; Fri, 31 May 2019 07:50:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.65 listed in list.dnswl.org]
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
	[209.85.221.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7192E00D54
	for <poky@yoctoproject.org>; Fri, 31 May 2019 07:50:57 -0700 (PDT)
Received: by mail-wr1-f65.google.com with SMTP id l2so6711488wrb.9
	for <poky@yoctoproject.org>; Fri, 31 May 2019 07:50:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=V562idA+jEAt5JMg6G5EKaD1SXscvylvxVWXkFEQy/4=;
	b=Oi3rjAg+VrjOhRqPjsTkrliEpBUU0P9M2/xDR+m7KK70kHeDK94zFHIegLbQevdtDq
	oJaI3I0/OxmlbedKW+/A77tKonz6oCqLOHtBpWqNLiiCGlt4P2iG8IX98/qGfKwuKLln
	ibzdaySKrNq32yTBA+jVj3MhcEtnb9wP5vx8w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=V562idA+jEAt5JMg6G5EKaD1SXscvylvxVWXkFEQy/4=;
	b=FHh18JRGAjrrcKMcLTavowoaNjn9L6FJMMrVmCt80zd4UnJzwe70A3cgHg88yh06/T
	JMsZ3dK4Rh+toWTmwZ465IylrxbcQuMhwwfX7aPaVT9slyKCchSLvknY98dhmX2kI68F
	A7O4fxKnx86wZ9PQ4dVHrFJdwU5RPnjwqr4BkelVKSF6TDXfJAEDYbqnV0W0HlwDukAa
	RB2u7xi5tcfUufIGhDZa+lPyJdPEQRoltJaf/L7brZW0jCq1syUX047WNqvnNQt6D2l9
	QevAxDqzo4ABzExytjsYIYWqi39cF81IBh6qZlEwGQGWrYEJ4K4v87z/8Bj08c/32JGz
	et1Q==
X-Gm-Message-State: APjAAAWEIH+zUbAvvZG5cn1aOKZbwE3EMQeMDXBkIfienuEHmP2xa6fy
	AKv8c7wHnZV21341vRMnNyPVvw==
X-Google-Smtp-Source: APXvYqzV0i9j+QgB9/pnBPzdE5qho84j6AjCHzFJLOrQs0o6ycRakAHAQVsTdO/t4Iu5KdDm08wNqQ==
X-Received: by 2002:a5d:55ce:: with SMTP id i14mr6882832wrw.352.1559314256638; 
	Fri, 31 May 2019 07:50:56 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id 8sm4963617wmf.18.2019.05.31.07.50.55
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 31 May 2019 07:50:55 -0700 (PDT)
Message-ID: <49498d79c124b881d142ead589a3e685b4c1aa33.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>, poky@yoctoproject.org
Date: Fri, 31 May 2019 15:50:54 +0100
In-Reply-To: <20190531090953.shdqfcmj27ei4evb@qschulz>
References: <20190531090953.shdqfcmj27ei4evb@qschulz>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: opkg and BAD_RECOMMENDATIONS in thud 2.6.2
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
X-List-Received-Date: Fri, 31 May 2019 14:50:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-05-31 at 11:09 +0200, Quentin Schulz wrote:
> I took me a while to find out that it's an issue with opkg itself and
> nothing could be done in Yocto to fix it but I found the three following
> patches in yocto-2.7:
> 
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=d8e12f2bfc4deaa0dc7530cf3af905e18e8037f6
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c76c50df6498d85e7a6254002ff8f5e0ef3e67f7
> https://git.yoctoproject.org/cgit.cgi/poky/commit/?id=5bcb626cf49d2295ccca45d6fc7e1617cca932d6
> 
> With those three applied on top of thud 2.6.2, my image is built without
> complaints.

Does it work with just the first two? I think those may be
possibilities for backporting. Adding the stable maintainer (Armin) to
cc. The thrid one (the upgrade) probably isn't a candidate.

Cheers,

Richard


