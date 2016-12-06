Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2D58E0098A; Tue,  6 Dec 2016 11:17:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pg0-f68.google.com (mail-pg0-f68.google.com [74.125.83.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F769E0093B
	for <poky@yoctoproject.org>; Tue,  6 Dec 2016 11:17:31 -0800 (PST)
Received: by mail-pg0-f68.google.com with SMTP id x23so20697136pgx.3
	for <poky@yoctoproject.org>; Tue, 06 Dec 2016 11:17:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=5nu8zL1lNY0NY0dJpxNY2p45q/PMwv1WI4T5241f2CM=;
	b=fQ08r/m+VlF3PmRo0PqZm7MQpwY79pyi9J9kY6EpVuU3YyEKYzfL24Zi0khg3C7Qjm
	SxrZi3GeXxkG7jzE03b8mKVPtUe9q8u95dPnNCACXyrBmbqH2rhqf9QBewojHv3ci+Rk
	ElkMYy5iotR330KCznCXvfN7uMc4mei/jlv04M68vFkOoEVmNev4Y0bmffRXQtv2Mt+K
	x5zO2LVV8asAX28IkiNfiWpSHAoxed3du7LeMcXOQdrIFDS2XXw4FRZheR3JH14NFKba
	utm5q8Ro66T3CjNmwbp4Bj8BJjMseMDAZ4DII3n2Or9xRhLIyM8sm2gJyNjfNa8N8CtI
	HI9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=5nu8zL1lNY0NY0dJpxNY2p45q/PMwv1WI4T5241f2CM=;
	b=HWMiXnmrdK2LL9BRSg0sXvGvz59ReczzUD5kozxt8HGprj71j0Ahk1CrynEqvQYgh8
	2TpMZlpaIT4sBIATRl5awOHl68mCn4HhmI9+uld7n0LO3xJWVkRjJSVGQSqXuLNe1YU+
	Co/1nQ4HMagOUDkNLQNhDB9CgLkpsuItXcJNcTnTALuQIo+7Y/ef5EeweoSOx7d0xGMr
	kMOUL8Smjvwsz1IfO2ceTogrBcCiQX5MfIjPJJ/CDimziv5u4MsR9iUfK9SWezLMXgXi
	7cn6RlfbHhpPKgif2aUyWsjCkAsX9mklxBvN30v+s3WhWIRf3ED0aI91G99YIbqZrC3h
	/YjA==
X-Gm-Message-State: AKaTC023jk+sioQsIF7wRFpaiAGC/dIu5D6YyODQfg8JZaDC/CnBS1IMK5NaLU72zAJVnQ==
X-Received: by 10.84.217.149 with SMTP id p21mr111735088pli.121.1481051851384; 
	Tue, 06 Dec 2016 11:17:31 -0800 (PST)
Received: from Akusters-laptop.local ([2601:202:4001:9ea0:b9e4:6489:8253:486])
	by smtp.googlemail.com with ESMTPSA id
	t67sm36736962pfg.13.2016.12.06.11.17.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 11:17:31 -0800 (PST)
To: Panagiotis Tamtamis <tamtamis@gmail.com>, poky@yoctoproject.org
References: <CAJq++8RcxWck6eVnOsCmoZsVE5L3tCRAzwOcOCQvp1m1zayEPg@mail.gmail.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <dd703aa9-54a8-1888-f162-d9c655029631@gmail.com>
Date: Tue, 6 Dec 2016 11:17:30 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.5.0
MIME-Version: 1.0
In-Reply-To: <CAJq++8RcxWck6eVnOsCmoZsVE5L3tCRAzwOcOCQvp1m1zayEPg@mail.gmail.com>
Subject: Re: morty support for e500 (p1020, p2020)
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
X-List-Received-Date: Tue, 06 Dec 2016 19:17:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 12/6/16 12:41 AM, Panagiotis Tamtamis wrote:
> Morty branch does not compile clean for ppc e500.
> Problem is a missing break at bin utils.
>
> Patch:
> diff --git a/meta/recipes-devtools/binutils/binutils-2.27.inc
> b/meta/recipes-devtools/binutils/binutils-2.27.inc
> index fc81721..f5bdc90 100644
> --- a/meta/recipes-devtools/binutils/binutils-2.27.inc
> +++ b/meta/recipes-devtools/binutils/binutils-2.27.inc
> @@ -37,6 +37,7 @@ SRC_URI = "\
>       file://0015-binutils-mips-gas-pic-relax-linkonce.diff \
>      
> file://0015-Refine-.cfi_sections-check-to-only-consider-compact-.patch \
>      
> file://0016-Fix-seg-fault-in-ARM-linker-when-trying-to-parse-a-b.patch \
> +    
> file://binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch \
>  "
>  S  = "${WORKDIR}/git"
>  
> diff --git
> a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
> b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
> index e69de29..9759525 100644
> ---
> a/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
> +++
> b/meta/recipes-devtools/binutils/binutils/binutils-gdb.git-8941017bc0226b60ce306d5271df15820ce66a53.patch
> @@ -0,0 +1,26 @@
> +From: Alan Modra <amodra@gmail.com <mailto:amodra@gmail.com>>
> +Date: Tue, 30 Aug 2016 11:27:32 +0000 (+0930)
> +Subject: ppc apuinfo for spe parsed incorrectly
> +X-Git-Url:
> https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commitdiff_plain;h=8941017bc0226b60ce306d5271df15820ce66a53
> +
> +ppc apuinfo for spe parsed incorrectly
> +
> +apuinfo saying SPE resulted in mach = bfd_mach_ppc_vle due to a
> +missing break.
> +
> +       PR 20531
> +       * elf32-ppc.c (_bfd_elf_ppc_set_arch): Add missing "break".
> +---
> +
> +diff --git a/bfd/elf32-ppc.c b/bfd/elf32-ppc.c
> +index 92299bc..1dd6d78 100644
> +--- a/bfd/elf32-ppc.c
> ++++ b/bfd/elf32-ppc.c
> +@@ -2246,6 +2246,7 @@ _bfd_elf_ppc_set_arch (bfd *abfd)
> +               case PPC_APUINFO_BRLOCK:
> +                 if (mach != bfd_mach_ppc_vle)
> +                   mach = bfd_mach_ppc_e500;
> ++                break;
> + 
> +               case PPC_APUINFO_VLE:
> +                 mach = bfd_mach_ppc_vle;
>
>
>
> But should I push this change since NXP removed its support and conf
> files at meta-fsl-ppc for morty branch?

Yes please send a patch. Please check master to make sure we don't need
the fix there too.

- Armin
>
>
> Best regards,
> Tamis
>
> -- 
> Think simple!
>
>


