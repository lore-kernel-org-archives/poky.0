Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B3E1E0086E; Wed, 28 Jan 2015 05:05:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396FBE00757
	for <poky@yoctoproject.org>; Wed, 28 Jan 2015 05:05:26 -0800 (PST)
Received: by mail-pa0-f42.google.com with SMTP id bj1so25499548pad.1
	for <poky@yoctoproject.org>; Wed, 28 Jan 2015 05:05:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:organization:user-agent
	:mime-version:to:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=mZRumJy9/l68d4GgUxEK/ZN8yBCf9hLo9cApJVOn6bw=;
	b=lo4bYw+ptILSFEAaolzsU4VRF7mF8t0bJupK0Rg2rifs9h+FAG4VABuA+elotOLEAG
	N3CHjoRYuhuiHSR+uiZ0hEA9gjLBKqyiY7CUTLzkqacefvm9MLvGErjFnt7FZw7ORRG9
	K9vl3QMvQKrOMl3jic37DIOobd5gpvh5lZsQxUvE3XnvFjlMJezypAVuXk/IY1qmDGHi
	jQue2WnF4flR12OWnWz3W+Bb7pOZXJtjvchinLSjfn0IuDNUwWW8UXGpu4FUdSSGAs1j
	mBdTzcWIgW6U/fpUCX2jK87XykxWDog9+l3gZYfzWT09P8OWN5/QSTIGSL4Sdy/jbtlW
	GlVw==
X-Gm-Message-State: ALoCoQmZl4xAFibnwKPk2GUU+QN9VQTdQBTJRircwr6wPxWDootm/bxY8fxVS8xVBX5Eb2MKMVku
X-Received: by 10.68.190.198 with SMTP id gs6mr5458292pbc.83.1422450326509;
	Wed, 28 Jan 2015 05:05:26 -0800 (PST)
Received: from swold-mobl5.amr.corp.intel.com
	(c-67-171-230-40.hsd1.wa.comcast.net. [67.171.230.40])
	by mx.google.com with ESMTPSA id hn1sm4713520pbb.36.2015.01.28.05.05.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 28 Jan 2015 05:05:25 -0800 (PST)
Message-ID: <54C8DE94.8090604@intel.com>
Date: Wed, 28 Jan 2015 05:05:24 -0800
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@linux.intel.com>, sgw@linux.intel.com, 
	poky@yoctoproject.org
References: <cover.1422365238.git.tom.zanussi@linux.intel.com>
	<1cdf161857393965869f0984a6bdf4b2592ca7e4.1422365238.git.tom.zanussi@linux.intel.com>
In-Reply-To: <1cdf161857393965869f0984a6bdf4b2592ca7e4.1422365238.git.tom.zanussi@linux.intel.com>
Subject: Re: [PATCH 1/1] yocto-bsp: Add branch to SRC_URI for custom kernels
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
X-List-Received-Date: Wed, 28 Jan 2015 13:05:32 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 01/27/2015 08:46 AM, Tom Zanussi wrote:
> Without 'branch' in the SRC_URI, a SRCREV specified for a non-master
> KBRANCH will result in a fetch failure since the branch tested by the
> fetcher will default to master, which doesn't contain the SRCREV.
> This fixes the problem by adding branch=KBRANCH to the SRC_URI.
>
> Fixes [Yocto #6518].
>
> Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
> ---
>   .../target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb     | 4 ++--

This does not apply to daisy since daisy uses the older style of file 
naming with the command check.

Sau!


>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
> index 69f598e..80a52e7c 100644
> --- a/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
> +++ b/scripts/lib/bsp/substrate/target/arch/common/recipes-kernel/linux/linux-yocto-custom.bb
> @@ -32,9 +32,9 @@ inherit kernel
>   require recipes-kernel/linux/linux-yocto.inc
>
>   {{ if kernel_choice == "custom" and custom_kernel_remote == "y": }}
> -SRC_URI = "{{=custom_kernel_remote_path}};protocol=git;bareclone=1"
> +SRC_URI = "{{=custom_kernel_remote_path}};protocol=git;bareclone=1;branch=${KBRANCH}"
>   {{ if kernel_choice == "custom" and custom_kernel_remote == "n": }}
> -SRC_URI = "git://{{=custom_kernel_local_path}};protocol=file;bareclone=1"
> +SRC_URI = "git://{{=custom_kernel_local_path}};protocol=file;bareclone=1;branch=${KBRANCH}"
>
>   SRC_URI += "file://defconfig"
>
>


