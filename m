Return-Path: <krzk@kernel.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27278E00B28; Wed, 25 Apr 2018 06:51:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.145.29.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9254E005A9
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 06:51:26 -0700 (PDT)
Received: from mail-wr0-f177.google.com (mail-wr0-f177.google.com
	[209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3DED221789
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 13:51:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3DED221789
Authentication-Results: mail.kernel.org;
	dmarc=none (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=krzk@kernel.org
Received: by mail-wr0-f177.google.com with SMTP id o4-v6so3148121wrm.0
	for <poky@yoctoproject.org>; Wed, 25 Apr 2018 06:51:26 -0700 (PDT)
X-Gm-Message-State: ALQs6tD3HiVPfUid1xrNZRwwr8xr+fTHosdMDjNjux1lSDYNDWwxiwGj
	mgXtPTkdqRolkThLL3KtHwVQts4Khe6Hvjlyp6w=
X-Google-Smtp-Source: AB8JxZoigSV/TxkWDCPhXVU48kQTfoBB5ZLLPTjKd+ELDWsLwfgXukVzdvN08N0eQ/BGqUq9w4vEjOWu0rnru71kbN8=
X-Received: by 2002:adf:a075:: with SMTP id
	l50-v6mr2231281wrl.227.1524664284736; 
	Wed, 25 Apr 2018 06:51:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.199.7 with HTTP; Wed, 25 Apr 2018 06:51:24 -0700 (PDT)
In-Reply-To: <1524664054-21717-1-git-send-email-krzk@kernel.org>
References: <1524664054-21717-1-git-send-email-krzk@kernel.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 25 Apr 2018 15:51:24 +0200
X-Gmail-Original-Message-ID: <CAJKOXPe0SWcHYxKjKUsiAT+YMJFsjWzroguaO8aQO69T=cTkgg@mail.gmail.com>
Message-ID: <CAJKOXPe0SWcHYxKjKUsiAT+YMJFsjWzroguaO8aQO69T=cTkgg@mail.gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: Joe MacDonald <joe_macdonald@mentor.com>, poky@yoctoproject.org,
	openembedded-core@lists.openembedded.org
Subject: Re: [meta-networking][rocko][PATCH 1/2] kernel_wireless_regdb: Add class for embedding regulatory data into the kernel
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
X-List-Received-Date: Wed, 25 Apr 2018 13:51:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Apr 25, 2018 at 3:47 PM, Krzysztof Kozlowski <krzk@kernel.org> wrote:
> Small embedded systems might:
> 1. Want to get rid of daemons as much as possible (therefore be built
>    without CRDA),
> 2. Not receive user-space incremental updates but an entire system
>    upgrade (with kernel).
>
> Add class kernel_wireless_regdb which allows in such cases to embed the
> wireless regulatory database directly in the Linux kernel during build
> process.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  meta-networking/classes/kernel_wireless_regdb.bbclass        | 12 ++++++++++++
>  .../wireless-regdb/wireless-regdb_2016.06.10.bb              |  8 ++++++++
>  2 files changed, 20 insertions(+)
>  create mode 100644 meta-networking/classes/kernel_wireless_regdb.bbclass
>
> diff --git a/meta-networking/classes/kernel_wireless_regdb.bbclass b/meta-networking/classes/kernel_wireless_regdb.bbclass
> new file mode 100644
> index 000000000000..6ae90d2d088c
> --- /dev/null
> +++ b/meta-networking/classes/kernel_wireless_regdb.bbclass
> @@ -0,0 +1,12 @@
> +# Copies the regulatory plaintext database to kernel sources before compiling.
> +# Linux kernel must be compiled with CONFIG_CFG80211_INTERNAL_REGDB to use it.
> +
> +DEPENDS += "wireless-regdb-native"
> +
> +SRCTREECOVEREDTASKS += "do_kernel_add_regdb"
> +do_kernel_add_regdb() {
> +    cp ${STAGING_LIBDIR_NATIVE}/crda/db.txt ${S}/net/wireless/db.txt
> +    echo ${S}

Ah, some debugging code slipped in. I'll send v2.

Best regards,
Krzysztof

