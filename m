Return-Path: <carl.schultz2020@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0938EE00924; Wed, 25 Jan 2017 09:53:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (carl.schultz2020[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.179 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f179.google.com (mail-yb0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E9C1E008D3
	for <poky@yoctoproject.org>; Wed, 25 Jan 2017 09:53:13 -0800 (PST)
Received: by mail-yb0-f179.google.com with SMTP id 123so17983747ybe.3
	for <poky@yoctoproject.org>; Wed, 25 Jan 2017 09:53:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=lcWnCcV5KR2CuzPbd/YyUnBk8aZS7c6XJ1yluO9WbWI=;
	b=LLYl7szZLKDKFgrOcGJOh3XSZwRXGm1mljjZKRZL1714jl1+Q6bMEM2ZXM/KI8FrIu
	/uVMyl5hK+tPF64BqHtOTjoHJ8d+LRtwZOrKIsCCRVcksjjvU5lUh3bvxpqDoKFpi0US
	fBz4ZvGEeeEvtM9I/TptPqmPiXioy6Bh4t4+C1BPuhaxC0ACm9UbpNZWDzl4BIEVi1gp
	wa7tOG6RFLfmCM12AwpqcBNjBIf3kt5Fu/zGTUMRM4sUUVl+mrKeIW+tdy6HGjARWWbb
	2HAypRdtGSQTFnavGCZm2m0TRsyPzQHCM13TVU1xNeikMfqRYqtRL8z6hx5SqOr/b0OR
	2S4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=lcWnCcV5KR2CuzPbd/YyUnBk8aZS7c6XJ1yluO9WbWI=;
	b=Hs4+x3nnqJuwkWNlomPZ7dEbhRTev8TUBh+JzSEEWGNhgGDXZ1U/1v7lm4hQbcPN1k
	CW3xj9xqvuuqknhzhnz41d0MWZfkolaybhyoFtp6qYczk0I1Ro2Csgfot+7lo+LBwYAV
	HoizF26clJ31I0kxl7A3KwIXK7GXYROUDDlYYt1vHIDScRJc56hJMnmd2JFGDcrVyUUY
	nFKVC0umSJj9n/+pb4xNGiKVoUUbYnkKbklwhL4+PcM8seSgjTn07kyTo/UXNBJaM7Vu
	vV8tlWKQZLuVmUn+eN9zicjDtiwgurq1/6U3l3BWdQ1f545x0lF4kkuzRzFWbxuWWmh4
	SomA==
X-Gm-Message-State: AIkVDXK5vrp91hfomOHxRx908ws45O7IEo4FrAG0Arakkk3k8LZGWaP2JEQkxhVoW2xcrydrKWoRwam1XvW3rg==
X-Received: by 10.129.137.6 with SMTP id z6mr20081776ywf.19.1485366792276;
	Wed, 25 Jan 2017 09:53:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.65.72 with HTTP; Wed, 25 Jan 2017 09:53:12 -0800 (PST)
From: Carl Schultz <carl.schultz2020@gmail.com>
Date: Wed, 25 Jan 2017 11:53:12 -0600
Message-ID: <CAOV5e70KAEw1=nhZrHiwx6mSZh3Tk6udcpOziAdHrFb+5xYkyg@mail.gmail.com>
To: poky@yoctoproject.org
Subject: Newbie Fetcher verification error
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
X-List-Received-Date: Wed, 25 Jan 2017 17:53:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c06a7ae03d2c70546eee829

--94eb2c06a7ae03d2c70546eee829
Content-Type: text/plain; charset=UTF-8

Hello,

Sorry if this is too basic, but, running into Fetcher verification failure (
www.example.com)
My Internet is functional (wget, ping, and importing page through python
all work).

ERROR:  OE-core's config sanity checker detected a potential
misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:

    Fetcher failure for URL: 'https://www.example.com/'. URL
https://www.example.com/ doesn't work. Please ensure your network is
configured correctly.


Could someone kindly point me to a solution or resource to resolve this?

Thank you,

Carl

--94eb2c06a7ae03d2c70546eee829
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,=C2=A0<div><br></div><div>Sorry if this is too basic=
, but, running into Fetcher verification failure (<a href=3D"http://www.exa=
mple.com">www.example.com</a>)</div><div>My Internet is functional (wget, p=
ing, and importing page through python all work).=C2=A0</div><div><br></div=
><div><div>ERROR: =C2=A0OE-core&#39;s config sanity checker detected a pote=
ntial misconfiguration.</div><div>=C2=A0 =C2=A0 Either fix the cause of thi=
s error or at your own risk disable the checker (see sanity.conf).</div><di=
v>=C2=A0 =C2=A0 Following is the list of potential problems / advisories:</=
div><div><br></div><div>=C2=A0 =C2=A0 Fetcher failure for URL: &#39;<a href=
=3D"https://www.example.com/">https://www.example.com/</a>&#39;. URL <a hre=
f=3D"https://www.example.com/">https://www.example.com/</a> doesn&#39;t wor=
k. Please ensure your network is configured correctly.</div></div><div><br>=
</div><div><br></div><div>Could someone kindly point me to a solution or re=
source to resolve this?</div><div><br></div><div>Thank you,=C2=A0</div><div=
><br></div><div>Carl</div></div>

--94eb2c06a7ae03d2c70546eee829--
