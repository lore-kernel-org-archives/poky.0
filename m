Return-Path: <bastien.jauny@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08182E01732
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 11:14:25 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id hn6so1329396wib.11
	for <poky@yoctoproject.org>; Wed, 13 Nov 2013 11:14:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:content-type:mime-version:content-transfer-encoding;
	bh=kQF32pDF2Emi+7j737C7OtesMW3p0RpTe1kP51sJhbU=;
	b=VtXIQxlk91zRC33xPbkgdJe/RSaq6nfEAybrxtcH9l8BQCyDARPT0x2EsMZlQ8WbqQ
	7PMPm4YKTG/yypuPCeSLi4KJtbHxST813z6dWyWs/ce88LwK4RWYOii6HsDK2kM+/4Hi
	YEAJziYa3l+sHhV7K0Ten6AbiqBGxIQlw1u33zHRq1C5T16FHGJn+a9A5WsHsWRdXpL8
	r7nLbLwZ8B64MeMxBqPohXVbVq2Rv8BL/KVl25VXt93k5TwmTuIHKpSkQnSP7wreby6e
	HSMA1LFAopD4G6aq5s64PpWsBqQ6WX7VgHDH0AJlYd5Vuxgc5xcQSQFswWhSTaKCjphv
	IJEQ==
X-Received: by 10.180.94.100 with SMTP id db4mr22050551wib.14.1384370064272;
	Wed, 13 Nov 2013 11:14:24 -0800 (PST)
Received: from [192.168.0.11] (85-171-63-10.rev.numericable.fr. [85.171.63.10])
	by mx.google.com with ESMTPSA id ma3sm57978265wic.1.2013.11.13.11.14.23
	for <multiple recipients>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Wed, 13 Nov 2013 11:14:23 -0800 (PST)
Message-ID: <1384370061.4683.3.camel@rivendell>
From: Bastien JAUNY <bastien.jauny@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Date: Wed, 13 Nov 2013 20:14:21 +0100
In-Reply-To: <1384366766.24747.39.camel@empanada>
References: <1384365430.4683.2.camel@rivendell>
	<1384366766.24747.39.camel@empanada>
X-Mailer: Evolution 3.4.4-3 
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
X-List-Received-Date: Wed, 13 Nov 2013 19:14:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Le mercredi 13 novembre 2013 à 12:19 -0600, Tom Zanussi a écrit :
> On Wed, 2013-11-13 at 18:57 +0100, Bastien JAUNY wrote:
> > Hello there,
> > 
> > I found that if the build environment is misconfigured (e.g. a bad path
> > for a layer in bblayers.conf) the yocto-bsp script crashes with a
> > standard python error, not very explicit.
> > 
> > First time I use mailing lists, I hope I did everything right! :)
> 
> Hi,
> 
> Thanks for your patch, it looks like it will fix the problem.
> 
> Just a couple things, though, if you wouldn't mind resubmitting:
> 
> - please don't submit patches as attachments, but rather submit them
> in-line i.e. use 'insert as text' in your mailer, for example, rather
> than 'as attachment'.
> 
> - please include the text explaining the problem and fix in the commit
> message e.g. 'If the build environment is misconfigured (e.g. a bad path
> for a layer in bblayers.conf) the yocto-bsp script crashes with a
> standard python error, not very explicit.  This fixes the problem'
> 
> - please preface the subject with the component and a short one-line
> description e.g. instead of:
> 
>  'Fix an error message in python bsp script, preventing a
>  crash with a python error in case of a misconfiguration.'
> 
> something more like:
> 
>  'yocto-bsp: Add missing format specifier in bblayers error message'
> 
> Thanks,
> 
> Tom
> 
> > _______________________________________________
> > poky mailing list
> > poky@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/poky
> 
> 

No problem, thanks a lot for your input Tom!

Regards,
Bastien


