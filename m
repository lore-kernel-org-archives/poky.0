Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754C5E01732
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 10:19:30 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 13 Nov 2013 10:19:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="408279176"
Received: from unknown (HELO [10.255.15.60]) ([10.255.15.60])
	by orsmga001.jf.intel.com with ESMTP; 13 Nov 2013 10:19:26 -0800
Message-ID: <1384366766.24747.39.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bastien JAUNY <bastien.jauny@gmail.com>
Date: Wed, 13 Nov 2013 12:19:26 -0600
In-Reply-To: <1384365430.4683.2.camel@rivendell>
References: <1384365430.4683.2.camel@rivendell>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: poky@yoctoproject.org
Subject: Re: Patch kernel.py to prevent a crash from yocto-bsp
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
X-List-Received-Date: Wed, 13 Nov 2013 18:19:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-11-13 at 18:57 +0100, Bastien JAUNY wrote:
> Hello there,
> 
> I found that if the build environment is misconfigured (e.g. a bad path
> for a layer in bblayers.conf) the yocto-bsp script crashes with a
> standard python error, not very explicit.
> 
> First time I use mailing lists, I hope I did everything right! :)

Hi,

Thanks for your patch, it looks like it will fix the problem.

Just a couple things, though, if you wouldn't mind resubmitting:

- please don't submit patches as attachments, but rather submit them
in-line i.e. use 'insert as text' in your mailer, for example, rather
than 'as attachment'.

- please include the text explaining the problem and fix in the commit
message e.g. 'If the build environment is misconfigured (e.g. a bad path
for a layer in bblayers.conf) the yocto-bsp script crashes with a
standard python error, not very explicit.  This fixes the problem'

- please preface the subject with the component and a short one-line
description e.g. instead of:

 'Fix an error message in python bsp script, preventing a
 crash with a python error in case of a misconfiguration.'

something more like:

 'yocto-bsp: Add missing format specifier in bblayers error message'

Thanks,

Tom

> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky



