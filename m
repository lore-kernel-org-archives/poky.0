Return-Path: <ross.burton@intel.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EF2BE013A7
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 06:54:26 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id fq13so11275033lab.21
	for <poky@yoctoproject.org>; Mon, 25 Mar 2013 06:54:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=KzgHs/EUAzICsmdgvWEboK1ezwHzxbiE50wX0kwi9c0=;
	b=Tc8yafc8dYWw9TXc1/AibfQy1GCyMdC6pLMHKpN5ET1PtApapnuYpRRmxT4h2j5EQk
	lZSOCtJg3j0jp4fTtMthI+lWd1Xt21/Uev79dU+H45z3BFYWwXXkYFWUvx0swlnbuSls
	TPB1/QWVmri5toElMueI3/tWADiRWfHp7p1ez9mvil5uPjLkhkpTWAhDNDrFAseJfU0e
	Z+Socss5+XXTJ96GpFOKs2LZFXmOPW6JDOjy/AZNecnM7ZEFRXkvQZy3fapzMS2j4Y0t
	HyT2CTLV83N3V8xt3mUmy9YGe18Qgi8zBINNC3HaQHZ4wE0fviHlZZ8FQNJ+5UjQfA+C
	QXWw==
X-Received: by 10.112.82.164 with SMTP id j4mr6167017lby.112.1364219665071;
	Mon, 25 Mar 2013 06:54:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.114.81.231 with HTTP; Mon, 25 Mar 2013 06:54:04 -0700 (PDT)
In-Reply-To: <1364218498.3097.48.camel@ted>
References: <51504DF2.3030206@mlbassoc.com> <1364218498.3097.48.camel@ted>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Mar 2013 13:54:04 +0000
Message-ID: <CAJTo0LZ2K0Q4CjrGojjSPwFB+RL6NAkFu5wvZG1s1yr-PD00Lg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>, 
	"Purdie, Richard" <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQkTBjoPs7leIJK6O0s69htLiTlqjlPnXVb8277RjgxIFLR7UUFjr2wD6XMcYvxL7VO1lOfA
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Calibrating touch screen
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
X-List-Received-Date: Mon, 25 Mar 2013 13:54:26 -0000
Content-Type: text/plain; charset=UTF-8

On 25 March 2013 13:34, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Ross: Any thoughts here? This isn't good coming up to release.

xinput-calibrate is the answer, which is sadly in meta-oe still.  This
needs to be merged.  Last time I looked at this there was on-going
rewriting of it's startup, I'll see if that's integrated so we can
migrate it.

What hardware/touchscreen are you using?

Ross

