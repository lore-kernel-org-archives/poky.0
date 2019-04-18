Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502D9E00D4F; Thu, 18 Apr 2019 01:31:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2E4E00D4C
	for <poky@yoctoproject.org>; Thu, 18 Apr 2019 01:31:55 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id k1so688714wrw.0
	for <poky@yoctoproject.org>; Thu, 18 Apr 2019 01:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=hinKlBREUvnQ9Uj7+Ij0tEOZ7Cr+EYpXTH/Zsz8nK8I=;
	b=ZyDMUTAFOtL+cioKmTadPRgz9BlOTWktPb9PtJ0VDqQbv3lMfwa7toX/BUCC2jpdqJ
	FrvzBb+oGet3JFCBlVokmdNSgjgKuQCj5OkkwlD9dH7CTUH2b7Yw6DN28OXXJ4+Ketmq
	xPgxMEYDQ5Tapx+ZibmCrHkCFw102IzOFIGCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=hinKlBREUvnQ9Uj7+Ij0tEOZ7Cr+EYpXTH/Zsz8nK8I=;
	b=CMCTsO5AzVM/I+Ni3uuI2yJaMxsWGeGNHLVpyPlBSBebbwCbeeS9z/TCZxkAV9DZCz
	13dBEaGoXR10+HZedvrQnf8vMrh/Z6gUtKw+/ZNn8MV1bf8Jo/jRQLENKJC7hY2cRkI/
	EXav3EtcLfL6peyEsdzJmPbckqFrwDITF74Uo1VawyLJ1JWOmAjMOlpeWNjDsLsLV46F
	L0EcS0mFDuc0Fq/dJEBj51P5ia7tYz0R18cr4peaIMa2B03y4azoekUi+bC01DgOE2Xd
	T5ZqizTOH0u0hhJ0+pHe8pnFyju5j8jTQ2CJPQ2Wj9EOpmg6bW94f3IOUZzLGjHy6ts4
	hWeQ==
X-Gm-Message-State: APjAAAUz+j4CF+vu1ELNERyfw+xK7T8GQqMmuRVGDJ3WNws3mlpFzADW
	zO/uV1LDPm7TiDaydi3XzQb8bA==
X-Google-Smtp-Source: APXvYqz3lH0qoYCnKgw0oSEqhElsqSH4R6mi3D+kkKnr5H4fEM918L5zbiv1zUrybaXscStn0EszXQ==
X-Received: by 2002:a5d:5346:: with SMTP id t6mr891468wrv.59.1555576314924;
	Thu, 18 Apr 2019 01:31:54 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id y9sm2612409wrn.18.2019.04.18.01.31.53
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 18 Apr 2019 01:31:54 -0700 (PDT)
Message-ID: <a2f3a0a281b75d06300d38ebd62e9c138cf6f9a5.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Mardegan, Alberto" <AMardegan@luxoft.com>, Poky Project
	<poky@yoctoproject.org>
Date: Thu, 18 Apr 2019 09:31:52 +0100
In-Reply-To: <8828ebbf-bc9d-3633-b8a7-8ccaa2101733@luxoft.com>
References: <8828ebbf-bc9d-3633-b8a7-8ccaa2101733@luxoft.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: XML test runner, or how to override Poky's python code
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
X-List-Received-Date: Thu, 18 Apr 2019 08:31:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-18 at 06:31 +0000, Mardegan, Alberto wrote:
> Hi there!
>   Since Yocto "thud", the test suite no longer supports outputting
> the
> test report in XML format.
> 
> While I'm not especially fond of that format, it had one feature
> which
> was quite important for our further processing of test results: the
> stdout from the test was captured and included in the test report
> (now
> the JSON test report only contains the stdout and stderr for the
> failing
> tests).
> 
> Is it possible from a layer to alter the implementation of the
> OETestRunner, so that the bitbake testimage command would behave the
> way
> we want to?

Its certainly possible to alter pretty much any of the code but it
would probably involve duplication which would be ugly. A better way
may be to send patches which optionally allow the test output to be
stored in the json output based upon configuration?

Cheers,

Richard


