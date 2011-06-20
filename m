Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7CF034C80AC3
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 17:58:25 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk4 with SMTP id 4so4179881pzk.28
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 15:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=QkYSQdbxO/kiWu/eoMdlZcb6D0hcPPDXshesogDIV7I=;
	b=GQOOHFFwZBRFcpVfV8AwJKWJh/k80vWl+Y3RzM0WmDwYAXG0Pbzfl4U/cMpt217o9E
	lv0R6XvGKWh7iD7rXtribPvqbZH5yBBfKNfbWK00hamN/XVD3XhCu5EA9eLR3UjT2Vmx
	ktNH47m3iCn2xm0vRE94FmSEHR3uYYR71KGvY=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=Uw3Grcj9HsqaHM+cGsNWJY3YdlIKVIJw3OJpVcPayBJXmIylnGhYrGYv5kQGfvWNQe
	q8OAILV1tmVKcsK1BUCcTqyqMBs2JQ77gGMUXsDffnY8pSkXsppt73VSxPIBc5b+gvvi
	xeUPZDtV5MYhU1R3G/KoBr8JNH8RYsFvuPyFg=
Received: by 10.68.51.2 with SMTP id g2mr2724854pbo.495.1308610703361; Mon, 20
	Jun 2011 15:58:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.55.195 with HTTP; Mon, 20 Jun 2011 15:57:53 -0700 (PDT)
In-Reply-To: <4DFFCEFA.2030000@mentor.com>
References: <4DFFAB8C.30905@linux.intel.com> <4DFFCEFA.2030000@mentor.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 20 Jun 2011 15:57:53 -0700
Message-ID: <BANLkTinGcZQ1x+ZA-iY5uGVN3OokNxA95w@mail.gmail.com>
To: Tom Rini <tom_rini@mentor.com>
Cc: poky@yoctoproject.org
Subject: Re: eggdbus build failure in master
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
X-List-Received-Date: Mon, 20 Jun 2011 22:58:25 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 20, 2011 at 3:51 PM, Tom Rini <tom_rini@mentor.com> wrote:
> On 06/20/2011 01:20 PM, Darren Hart wrote:
>> I'm seeing a consistent eggdbus build failure that seems to be related
>> to the perl-native relocation. I've cleanall'd autoconf and automake,
>> native and target versions. The failure persists.
>>
>> Anyone have any ideas on how to get this building? I'll start a clean
>> build in another directory for now.
>
> It's a glib problem, you need to switch glib-mkenums to using
> /usr/bin/env perl (you're building in too deep a path for #! to work
> with the full path to perl-native).
>

you mean import from oe

commit c63403cb9c02641476f9e275fb2e63bb54f5e46d
Author: Tom Rini <tom_rini@mentor.com>
Date:   Thu Nov 18 06:38:28 2010 -0700

    glib-2.0: Fix glib-mkenums to use /usr/bin/env perl

    Signed-off-by: Tom Rini <tom_rini@mentor.com>


> --
> Tom Rini
> Mentor Graphics Corporation
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
>

