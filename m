Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-pv0-f176.google.com (mail-pv0-f176.google.com
	[74.125.83.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 92F634C8043A
	for <poky@yoctoproject.org>; Sun, 15 May 2011 10:03:27 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pve37 with SMTP id 37so2605222pve.35
	for <poky@yoctoproject.org>; Sun, 15 May 2011 08:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=dkLcyLHTP7GgwJgXOhUsEZNjqohZMfka3Yetf35jKTA=;
	b=vprpcq6ddCRK4/lgfNLciIBVtS/oGSjUPaMZqxk7SWCHwmwnoqRbwb4kw72C5LBy2K
	F8Eqzf8Rd0kscR+sctlUmMpO8C3pbs2nFSIguOp0krdG80CWQHgEq/ZeCp4XpvJKFVbi
	Me8h2VBXXbckkIk/FhL7CG1eeAz5GyrC0OR7g=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=lr/KX/vmnADhsa1x31IBvr7vTkDS+5ImSkp+9suOjeBUM064u2CFbLLNdajkBvNwT0
	et0cRW7ZE4x5oQqUDIve+jMgignIG8tflR7+dprBqqeb5K5oDMC/WutSKwp1OCEfgAcZ
	T48TlwDh+tBS9GH2qdhJMr4j0pZUe7wWH9kaA=
MIME-Version: 1.0
Received: by 10.68.57.42 with SMTP id f10mr5517507pbq.2.1305471806805; Sun, 15
	May 2011 08:03:26 -0700 (PDT)
Received: by 10.68.52.232 with HTTP; Sun, 15 May 2011 08:03:26 -0700 (PDT)
In-Reply-To: <4DCC3BA6.3010406@windriver.com>
References: <4DCC3BA6.3010406@windriver.com>
Date: Sun, 15 May 2011 17:03:26 +0200
Message-ID: <BANLkTikB0P15uj-PveHCPJD-wjyn1gHqFw@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: poky <poky@yoctoproject.org>, openembedded-devel@lists.openembedded.org,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: Commit and Patch message guidelines - fifth draft
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
X-List-Received-Date: Sun, 15 May 2011 15:03:28 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Mark,

On Thu, May 12, 2011 at 9:57 PM, Mark Hatle <mark.hatle@windriver.com> wrote:
> <...> Let the code
> tell the story of the mechanics of the change (as much as possible), and let
> your comment tell the other details -- i.e. what the problem was, how it
> manifested itself (symptoms), and if necessary, the justification for why the
> fix was done in manner that it was.
>
In other words, the long commit message must describe *why* the change
was needed (instead of what has changed).

I find this item the most lacking in current OpenEmbedded/Poky related commits.

Thanks for working on this,
-- 
Leon

