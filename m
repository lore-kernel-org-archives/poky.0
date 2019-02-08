Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A55A2E00C8F; Thu,  7 Feb 2019 17:00:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DECC6E00C62
	for <poky@yoctoproject.org>; Thu,  7 Feb 2019 17:00:31 -0800 (PST)
Received: by mail-pl1-f172.google.com with SMTP id p8so863575plo.2
	for <poky@yoctoproject.org>; Thu, 07 Feb 2019 17:00:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+6nazgAx+6NAMhSzMssMDAUxAcwIsY5/fGt5xws4Zac=;
	b=iW/IH2TuENJILTR8BUX5u1ryKEu0yCjJ/a68ueQkjLfO40AJbsa2uKS2TWjLVYwMhm
	09ue/490NT4UaIkvxICmi2LAzgZe+1vDrfUWoe+gWv8a1C8R7skAPA9LzqsLGv86mLtm
	LK9apiDa94wSYAQmQtOhC1IL4Bfqdh5fjzB0opMwdE/hEqwx9JYniwPcZ4I5F26dLjv8
	L7EfYBOcYhJoDXzjz+q9uUYiyL8YSKoNs8pek2wmz+5UkCwzB47u/+vumKuDw0Vh4vA+
	lxdWnPGvGyoPE39o9AdXU+Q2xGyDcml3rbu31G6m0wJTCO9jSFyFkphEoLt4Cv2c0f39
	ri6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=+6nazgAx+6NAMhSzMssMDAUxAcwIsY5/fGt5xws4Zac=;
	b=ZLeMGyfGXhpujxmfns+FuJgHCUSBBzsEExti6Oj3K+4TqzgIjITBTknDDXYRV19Rgg
	C472WeRLucgr6RUIkNcLH5nABta94m1kEEeoXHJS5WOetfj6HOgpbOrBxWzkFd1bDYKZ
	Otr+SWqqZHbru9H+CUAlsIJxt2S6fcdTsopVAbpu2h0H9aOHsLndsm1JtBzZNyH0r8De
	GfXW6dhkjVAOFvx7rWCle3osZ5HAlGuzorByeXga8FKOc3PV3thqoTnmy0DHctYcziyt
	NreDetv1f2vld4gJ3Sa2uYQbRGRd0fk2Z73JGg4y7netfi8wkmVwPIlkM7EKSkIgW4CB
	qgqw==
X-Gm-Message-State: AHQUAuYUBGWodX0dcbnwx+8jzcjU0J9pAIpvwMIByBIdW7iG6WNcB1fn
	rWmFjiehF/QLyvtbtedEIRpsSa7VkXE=
X-Google-Smtp-Source: AHgI3IZVkePFXzryhTXUiiQr4Bao5XQu3Y2vOV3Ma3Y1kZxr2/F8NEahTRPFIywKihvezMpvVyiW7w==
X-Received: by 2002:a17:902:1:: with SMTP id 1mr18679626pla.276.1549587630740; 
	Thu, 07 Feb 2019 17:00:30 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:ad56:550a:e69:8923?
	([2601:202:4180:c33:ad56:550a:e69:8923])
	by smtp.gmail.com with ESMTPSA id c4sm325932pgq.85.2019.02.07.17.00.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Feb 2019 17:00:30 -0800 (PST)
To: "Grandbois, Brett" <brett.grandbois@opengear.com>,
	"poky@yoctoproject.org" <poky@yoctoproject.org>
References: <20190206234956.23897-1-brett.grandbois@opengear.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <3b933464-f797-5f11-391e-59a365265752@gmail.com>
Date: Thu, 7 Feb 2019 17:00:28 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190206234956.23897-1-brett.grandbois@opengear.com>
Subject: Re: [PATCH] ruby: remove CVE-2018-1000073.patch as already fixed
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
X-List-Received-Date: Fri, 08 Feb 2019 01:00:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Brett,

Thanks for the patch. This change goes against what we refer to as
"core" and there is a mailing list for these changes.

The cool thing is we have a system that tries to apply changes to core
and if there is an issue, it will email back what it thinks  the issues
are. Can you resend this to:
openembedded-core@lists.openembedded.org

regards,
Armin


On 2/6/19 3:50 PM, Grandbois, Brett wrote:
> rubygems 2.7.6 which is in ruby 2.5.3 has this fix and as currently
> applied all gem extraction fails as the realpath check is done against
> the full path including the file to be extracted which will always fail
> as the file hasnt been extracted yet
>
> Signed-off-by: Brett Grandbois <brett.grandbois@opengear.com>
> ---
>  .../ruby/ruby/CVE-2018-1000073.patch          | 34 -------------------
>  meta/recipes-devtools/ruby/ruby_2.5.3.bb      |  1 -
>  2 files changed, 35 deletions(-)
>  delete mode 100644 meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
>
> diff --git a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch b/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
> deleted file mode 100644
> index 22fa1b5f4d..0000000000
> --- a/meta/recipes-devtools/ruby/ruby/CVE-2018-1000073.patch
> +++ /dev/null
> @@ -1,34 +0,0 @@
> -From 1b931fc03b819b9a0214be3eaca844ef534175e2 Mon Sep 17 00:00:00 2001
> -From: Jonathan Claudius <jclaudius@mozilla.com>
> -Date: Wed, 7 Feb 2018 23:54:52 -0500
> -Subject: [PATCH] Non-working patch for deducing symlinked base-dirs
> -
> ----
> -CVE: CVE-2018-1000073
> -
> -Fixed in ruby 2.7.6.
> -
> -Upstream-Status: Backport [github.com/rubygems/rubygems/commit/1b931fc...]
> -
> -Signed-off-by: Joe Slater <joe.slater@windriver.com>
> -
> ----
> - lib/rubygems/package.rb |    2 ++
> - 1 file changed, 2 insertions(+)
> -
> -diff --git a/lib/rubygems/package.rb b/lib/rubygems/package.rb
> -index dede959..cb9c74a 100644
> ---- a/lib/rubygems/package.rb
> -+++ b/lib/rubygems/package.rb
> -@@ -421,6 +421,8 @@ EOM
> -     destination_dir = File.expand_path destination_dir
> - 
> -     destination = File.join destination_dir, filename
> -+    destination = File.realpath destination if
> -+      File.respond_to? :realpath
> -     destination = File.expand_path destination
> - 
> -     raise Gem::Package::PathError.new(destination, destination_dir) unless
> --- 
> -1.7.9.5
> -
> diff --git a/meta/recipes-devtools/ruby/ruby_2.5.3.bb b/meta/recipes-devtools/ruby/ruby_2.5.3.bb
> index e9f0453788..3fb427e90e 100644
> --- a/meta/recipes-devtools/ruby/ruby_2.5.3.bb
> +++ b/meta/recipes-devtools/ruby/ruby_2.5.3.bb
> @@ -3,7 +3,6 @@ require ruby.inc
>  SRC_URI += " \
>             file://ruby-CVE-2017-9226.patch \
>             file://ruby-CVE-2017-9228.patch \
> -           file://CVE-2018-1000073.patch \
>             "
>  
>  SRC_URI[md5sum] = "20c85b67846d49622ef3b24230803fef"


