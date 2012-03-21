Return-Path: <robert21abel@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB918E01373
	for <poky@yoctoproject.org>; Wed, 21 Mar 2012 10:18:34 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so1663103bkc.35
	for <poky@yoctoproject.org>; Wed, 21 Mar 2012 10:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:message-id:date:from:reply-to:user-agent:mime-version:to
	:subject:x-enigmail-version:content-type:content-transfer-encoding;
	bh=CTVueHreFlMs5qajpuEPA7vv/wtvzefnx0VLgST5gOc=;
	b=ECS5O41eon+LWHHW3U7bQ3ah5qNtpvRf+TLSgq4GSiaBuZtXhLS3+Ec55PwBcypfA0
	T20vnAyhB7HNnVNiol0SoJYgqjK2ikI741H3K1dWTythLjBvlpTSHY22//NfUYOFhVGr
	ipb6WKdrLlAEzwm8WatjfotVmKKW5J9RWv6JVl7Unw2D2QasqKcfAcLHBAmqTEIRUUSx
	jNa7hIhAxB0kzayVnevRborx0jfXCZrEq6j0GvPc/R3YWL0sRRhXAQ0Mjz5ceMQnF7NZ
	d9/pIz1kaXQzZ1x8+CthUIWhIvEcg8EyKePH0TQrOr9zpE+Y9l7kMQKJ5lRExNjNXxAj
	JjEQ==
Received: by 10.205.132.141 with SMTP id hu13mr1763102bkc.87.1332350313653;
	Wed, 21 Mar 2012 10:18:33 -0700 (PDT)
Received: from [129.70.144.26] (floreana.TechFak.Uni-Bielefeld.DE.
	[129.70.144.26])
	by mx.google.com with ESMTPS id jd17sm4746737bkb.4.2012.03.21.10.18.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Mar 2012 10:18:32 -0700 (PDT)
Sender: Robert Abel <robert21abel@gmail.com>
Message-ID: <4F6A0D67.3080005@uni-bielefeld.de>
Date: Wed, 21 Mar 2012 18:18:31 +0100
From: Robert Abel <abel@uni-bielefeld.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: poky@yoctoproject.org
X-Enigmail-Version: 1.4
Subject: Patch.bbclass URL Reasoning
X-BeenThere: poky@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: abel@uni-bielefeld.de
List-Id: Poky build system developer discussion <poky.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/poky>,
	<mailto:poky-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/poky>
List-Post: <mailto:poky@yoctoproject.org>
List-Help: <mailto:poky-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/poky>,
	<mailto:poky-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 17:18:35 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

Could somebody enlighten me why the following is done in patch.bbclass?

> def src_patches(d, all = False ):
>     workdir = d.getVar('WORKDIR', True)
>     fetch = bb.fetch2.Fetch([], d)
>     patches = []
>     sources = []
>     for url in fetch.urls:
>         local = patch_path(url, fetch, workdir)
>         if not local:
>             if all:
>                 local = fetch.localpath(url)
>                 sources.append(local)
>             continue

As you can see (or guess), patches are resolved back to their original
URLs inside the recipe folder. The ones that are copied to ${WORKDIR}
during unpack don't seem to be used at all. Is there any special reason
why this is done?

Basically, I was happily editing patches using sed when I noticed that
my changes weren't applied at all. I thought the patches are copied to
${WORKDIR} precisely for the reason that they are used, i.e. can be
edited before patching.

The reason for editing them in the first place is that they contain
specific IDs (which I put there) that a task before do_patch replaces
for actual values (e.g. MHz for external hardware) for the board
configuration so my users will be able to simply change a variable
inside their local.conf for added comfort/ease-of-use.

It seems the patches are copied just because and aren't actually
utilized at all. Could this behavior be changed to use the copied
patches instead of the original patches inside the recipe folder? IMHO
it would make much more sense to be able to edit the patches before they
are being applied without having to overwrite the original patches in
the process.

Regards

Robert

