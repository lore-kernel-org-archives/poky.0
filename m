Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15892E00EEC; Tue, 29 Sep 2015 03:02:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-qk0-f181.google.com (mail-qk0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A66E00A81
	for <poky@yoctoproject.org>; Tue, 29 Sep 2015 03:01:58 -0700 (PDT)
Received: by qkfq186 with SMTP id q186so622501qkf.1
	for <poky@yoctoproject.org>; Tue, 29 Sep 2015 03:01:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=jmMpqqJTYKb880Xpv4CkRwI15YEraTwS9MjRpoh8eUw=;
	b=hYrmAeTdDK7uK6QmLG/Yjjo1fyiFjympoVf1RFyNPwsATlJVWcPTgdhQ/n/AxAlroh
	K5H6lVsQvg8NJHyeUhfUFZdWgD3URrexX6f0UVzGA5WjA6cJFIS5nZDrA1SgRJmGXWbt
	bzFWkV/Lg3ITZuSOQWZA6TsxvgrCQDUOP573JV8sp6MKuIQ84+QJyP1Ff/ePTlMX377w
	2MtFvuoyDDMAPKRyyzs34KK8rjDdDLLnXPwEzEiIbO2VzcPyoxn92IcA98H/ON6NhXfr
	LVse1hElLUXIbc6FZbZCLOtNkrTpzoWwYDIczoXBCiU42d0VWMXRZu7BfKqcIltbXBlY
	ayyg==
X-Gm-Message-State: ALoCoQn/PG5BmB1Twz3FYgh9biS9a/uFjlsqpreK6t1P1KFEynBU7O4kvGnmxxzff6ZnGnQPcCLW
X-Received: by 10.55.43.132 with SMTP id r4mr26018338qkr.104.1443520917583;
	Tue, 29 Sep 2015 03:01:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Tue, 29 Sep 2015 03:01:38 -0700 (PDT)
In-Reply-To: <1443519723-30931-1-git-send-email-kexin.hao@windriver.com>
References: <1443519723-30931-1-git-send-email-kexin.hao@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 29 Sep 2015 11:01:38 +0100
Message-ID: <CAJTo0LaV3Bp_PPKcxNmooADC8XPza5A2Pt8rFpY5GZw5sgUEEg@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>,
	Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Poky Project <poky@yoctoproject.org>,
	"Development list for the linux-yocto*.git Linux kernel repositories"
	<linux-yocto@yoctoproject.org>
Subject: Re: [linux-yocto] [PATCH] meta-yocto-bsp: bump to linux-yocto 4.1 for the non-x86 BSPs
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
X-List-Received-Date: Tue, 29 Sep 2015 10:02:01 -0000
Content-Type: multipart/alternative; boundary=001a1147af6a84d2370520dfe788

--001a1147af6a84d2370520dfe788
Content-Type: text/plain; charset=UTF-8

On 29 September 2015 at 10:42, Kevin Hao <kexin.hao@windriver.com> wrote:

> Boot test for all these boards.
>

If I build the edgerouter kernel I get this warning:

WARNING: Section not found: .comment

I've no idea if this is bad or not...

Ross

--001a1147af6a84d2370520dfe788
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 29 September 2015 at 10:42, Kevin Hao <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:kexin.hao@windriver.com" target=3D"_blank">kexin.hao@windriver.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><div id=3D":4sr" class=3D"" style=
=3D"overflow:hidden">Boot test for all these boards.<br></div></blockquote>=
</div><br>If I build the edgerouter kernel I get this warning:</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">WARNING: Section n=
ot found: .comment<br></div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">I&#39;ve no idea if this is bad or not...</div><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a1147af6a84d2370520dfe788--
