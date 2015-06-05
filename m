Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0E46E009EB; Fri,  5 Jun 2015 08:50:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D59E009E7
	for <poky@yoctoproject.org>; Fri,  5 Jun 2015 08:50:03 -0700 (PDT)
Received: by qcxw10 with SMTP id w10so31452202qcx.3
	for <poky@yoctoproject.org>; Fri, 05 Jun 2015 08:50:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=0wQ9QO2PMSI+Dnai0J2o17PzZwEYEZA965mwu1zrYLk=;
	b=fyp8otEO+UrBEHIMCPkBaFYA8DoQo8WVrxeAT8JcBkI30mcaCSBYXRf/0aBcxjq2xH
	9kMBjhVQvMu3aOW5bAYI1JmRiM3thapfOWHsXunzv6w5FiK9qzhH07o8xHFAenasMREM
	dGFa0A74gCtCWegD5u8bmca3mhCsrtiyzmkemurdMdpijgThDwj2TDOGv0cMcn/moJ7S
	+VG/YwOSpqx890OIt3xOoaHl27E97VDeojDU324YoPsnMMjEgpVDwWb1megYVVNXfKLL
	8InV1mGs0gM9zlmm4pwvB/Zc1qnlLYwOcWzk7nGj65rN+G79zRcqxcUsoCkdePX2BVYi
	b9ng==
X-Gm-Message-State: ALoCoQn6ntNP+hoQ0KidAKFCDXMFufcD5HK586YNWi4LzjiFPgr9qiAQo+k8DKcXZ5/N0fBaSIpG
X-Received: by 10.140.88.100 with SMTP id s91mr4673006qgd.59.1433519402534;
	Fri, 05 Jun 2015 08:50:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 5 Jun 2015 08:49:42 -0700 (PDT)
In-Reply-To: <1433517954-17143-1-git-send-email-bruce.ashfield@windriver.com>
References: <1433517954-17143-1-git-send-email-bruce.ashfield@windriver.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Jun 2015 16:49:42 +0100
Message-ID: <CAJTo0LbwGTi+SCat7DOD-49rnh7nhGLq8=cSwwrtPc6P8WYfaA@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] bsps: update SRCREVs to the 3.19 latest
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
X-List-Received-Date: Fri, 05 Jun 2015 15:50:10 -0000
Content-Type: multipart/alternative; boundary=001a11c11990c4605f0517c73ecb

--001a11c11990c4605f0517c73ecb
Content-Type: text/plain; charset=UTF-8

On 5 June 2015 at 16:25, Bruce Ashfield <bruce.ashfield@windriver.com>
wrote:

> Updating the reference BSP's SRCREVs to pick up the latest 3.19 changes.
>

Thanks Bruce, build-testing now.  I'll probably squash this with the
previous one.

Ross

--001a11c11990c4605f0517c73ecb
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 5 June 2015 at 16:25, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriv=
er.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":=
kh" class=3D"a3s" style=3D"overflow:hidden">Updating the reference BSP&#39;=
s SRCREVs to pick up the latest 3.19 changes.<br></div></blockquote></div><=
br>Thanks Bruce, build-testing now.=C2=A0 I&#39;ll probably squash this wit=
h the previous one.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a11c11990c4605f0517c73ecb--
