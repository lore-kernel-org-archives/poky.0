Return-Path: <kergoth@gmail.com>
Received: from mail-vx0-f171.google.com (mail-vx0-f171.google.com
	[209.85.220.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id B67AC4C8009E
	for <poky@pokylinux.org>; Sat,  9 Jul 2011 16:16:52 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vxh11 with SMTP id 11so2634752vxh.2
	for <poky@pokylinux.org>; Sat, 09 Jul 2011 14:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=ZqbTi9rKk4lsAakoSBNr5wXhkI73LaeO3kNG0GP3Bfk=;
	b=Fpje6ITbG+F0PnT/G4z1bsqVXXFiM/dtVXWD3Npr/Sh34l1gtXmfBrIsUI6q4awthm
	nGabl/+mhAf/qq4z6MsTk+wlsqrei4YFziCWu8WUEwDEtjwIsM34nfEedu7wW7YDZzWn
	EMFeEKSaxx+f7hQo9M7kZVbn7dkIfSXm3Umoc=
Received: by 10.52.89.231 with SMTP id br7mr2194117vdb.54.1310246212166; Sat,
	09 Jul 2011 14:16:52 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.52.110.7 with HTTP; Sat, 9 Jul 2011 14:16:32 -0700 (PDT)
In-Reply-To: <4E18132A.6020300@linux.intel.com>
References: <4E14A686.5020104@linux.intel.com> <1310035173.20015.820.camel@rex>
	<4E15F6FD.6020809@linux.intel.com> <iv7q7b$sqj$1@dough.gmane.org>
	<4E18132A.6020300@linux.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sat, 9 Jul 2011 14:16:32 -0700
X-Google-Sender-Auth: KoI58_8zTxA61fikMc6-Vqtvin4
Message-ID: <CABcZANkBJzCk+ceCYyyx79zqsA87t7E5K=GAERj0Zjaugxi2_A@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: gmane@reliableembeddedsystems.com, poky@pokylinux.org
Subject: Re: build performance: bb-matrix on 4-core (BB_NUMBER_THREADS and PARALLEL_MAKE optimization)
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
X-List-Received-Date: Sat, 09 Jul 2011 21:16:53 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Jul 9, 2011 at 1:36 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> On 07/08/2011 01:44 PM, Robert Berger wrote:
>> Darren/Richard,
>>
>> Maybe we could instead of hacking hard coded default values (or nothing)
>> into the config file default to something like this:
>>
>> somehow get the number of CPUs:
>>
>> CPUS=$(grep ^processor /proc/cpuinfo | wc -l)
>> echo CPUS=${CPUS}
>>
>> or
>>
>> CPUS=`getconf _NPROCESSORS_ONLN`
>> echo CPUS_UBUNTU=${CPUS_UBUNTU}
>>
>> (don't know if the second one will also work with other distros than Ubuntu)
>>
>> Do some calculation which magic number for BB_NUMBER_THREADS and
>> PARALLEL_MAKE to use:
>>
>> e.g. what was suggested: BB=2*NR_CORES PM=1.5*NR_CORES
>
> My concern with this is that on larger machines I'm seeing very
> different optimal multipliers. On my 12 core with a RAID 0 build array,
> the ideal setting seems to be BB=12 PM=12.
>
> Until we can better characterize the ideal settings, I think we are
> better off documenting what works for specific systems. Now perhaps we
> need to do something that caps the number, but that is sure to be wrong
> in short order as well.
>
> As your signature suggests, the solution to this isn't likely to be
> simple ;-)

This may be rather specific to my personal setup, but I use
https://gist.github.com/776390 -- you'll note that you can adjust the
scaling factors via variables.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

