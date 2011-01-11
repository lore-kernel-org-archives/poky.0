Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 137174C80050;
	Tue, 11 Jan 2011 08:19:32 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so22151035iyb.35
	for <multiple recipients>; Tue, 11 Jan 2011 06:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=jIDjX1hbPztaikdiAmfxODfEwjZDvYf2FEDPojpN7Ps=;
	b=doFt5wOu3FcgQMIJV10K5qOlgsv35mMLSGfSyRK3rD6YP0wppb+U/0CZ9l2igMAvAY
	FhCS2dwiNSe/bWuM7wY/WU6B1dD8liKgCIeveiq3elrF4btukgqgeguW0AR3Hsb3XDFc
	1Xye7yw+uW9mVDcX5lAOQiTIh6iA/YJ8TT/rQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=Qq97tS1B8OGNgz6UHCpZ2kqDdidl+Us7YtGpeUmjNp0xO/vtQS5qpZtV3TJz56VS1s
	LTul12KRPT5n/tNyXp2ekZScJCpsdwnvD1sSuOteUo5T+gv5Ee4h5D1VMD828itCfRbR
	9yRw9zY32vIW597kLOMtvYVZxwCzmGTJm3h3o=
MIME-Version: 1.0
Received: by 10.231.207.73 with SMTP id fx9mr19420261ibb.137.1294755571471;
	Tue, 11 Jan 2011 06:19:31 -0800 (PST)
Received: by 10.231.156.136 with HTTP; Tue, 11 Jan 2011 06:19:31 -0800 (PST)
In-Reply-To: <1865303E0DED764181A9D882DEF65FB685AFA1B31B@shsmsx502.ccr.corp.intel.com>
References: <cover.1294680187.git.bruce.ashfield@windriver.com>
	<38d72bcb177222eba77eb3d7c483d55cbfb7f2e8.1294680187.git.bruce.ashfield@windriver.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B319@shsmsx502.ccr.corp.intel.com>
	<AANLkTikSSGjwH61YgsAQQ3qAQzgaq+RBzdC2r_=A5K9S@mail.gmail.com>
	<1865303E0DED764181A9D882DEF65FB685AFA1B31B@shsmsx502.ccr.corp.intel.com>
Date: Tue, 11 Jan 2011 09:19:31 -0500
Message-ID: <AANLkTik9C6f4qrP6_Ou7iCAPFiAs+wA3JjcAVay+-WQJ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
Subject: Re: [PATCH 4/5] kern-tools: create generic variables for platform/board/kernel
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
X-List-Received-Date: Tue, 11 Jan 2011 14:19:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 11, 2011 at 1:10 AM, Cui, Dexuan <dexuan.cui@intel.com> wrote:
> Bruce Ashfield wrote:
>> 2011/1/10 Cui, Dexuan <dexuan.cui@intel.com>:
>>> hmmm, looks this commit was not tested?
>>
>> It was definitely tested. Built for every board. Feel free to revert
>> as required.
> Hi Bruce,
> I'm building poky-image-minimal on today's latest poky master 4b055ed and=
 got the following failure.
>
>>> With poky.git's latest 4b055ed, "bitbake =A0kern-tools-native -c
>>> fetch" fails because in
>>> http://git.pokylinux.org/cgit/cgit.cgi/wr-kernel-tools/, the latest
>>> commit is still a494ddaf1c9151af8af8050e8427c9958440ec4c.
> The commit "kern-tools: create generic variables for platform/board/kerne=
l" upgraded SRCREV_pn-kern-tools-native to f553af04, but the wr-kernel-tool=
s tree doesn't have such a commit number, so I got the build failure. Can y=
ou please check that? Maybe you forgot to push your internal commits into t=
he public tree? :-)

I recalled giving it a push before sending the pull, but I was also battlin=
g
some issues with both infrastructure and poky-extras at the time. Regardles=
s,
it seems to be resolved now and shout if you see this again and I'll loop
back and have another look.

Cheers,

Bruce

>
> Thanks,
> -- Dexuan
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

