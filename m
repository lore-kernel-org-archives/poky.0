Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 313F7E00D22; Tue,  8 Sep 2015 12:31:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE830E00B4F
	for <poky@yoctoproject.org>; Tue,  8 Sep 2015 12:31:26 -0700 (PDT)
Received: by pacex6 with SMTP id ex6so132206465pac.0
	for <poky@yoctoproject.org>; Tue, 08 Sep 2015 12:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=/Hj7e+2agho7uY0Apt3pFP9/swgruUkLr8WgP7c+vGs=;
	b=qKddVjcOzK1EvMdTkwp0pqDfIl+KOX+8/U2mSlqXvER5jmPbF+YWmyAiW0hd6if+y5
	5cPG6RQDi8oru58jsCG/r7QrJc5VYAo6Aw0HUMmaIH897HqLO34ByUdSMm6IwkwqtHs6
	8o1+Wch8M2QaYdYsEUu/zob3Wh1DKfdRYQc83Ydm9F4mbjNPwe4aDoqfkOGwGLBoqpEV
	/22cHetE/V/WRGBC9Wt9tOnw1rDtpp10MaBMEKGOon+gcUw41zOy94YuUechqPP2qL8W
	uMTb+bTx3qTA1NIyvXPdOnaWIIrTjekEkIcush3vMepIhiySGCIQNKnfXShDPoxrgRHm
	VUIg==
X-Received: by 10.66.194.138 with SMTP id hw10mr33574871pac.71.1441740686010; 
	Tue, 08 Sep 2015 12:31:26 -0700 (PDT)
Received: from [10.43.100.29] (64.2.3.194.ptr.us.xo.net. [64.2.3.194])
	by smtp.googlemail.com with ESMTPSA id
	qu8sm4336112pab.29.2015.09.08.12.31.24
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 08 Sep 2015 12:31:24 -0700 (PDT)
Message-ID: <55EF378C.2050902@gmail.com>
Date: Tue, 08 Sep 2015 12:31:24 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>, 
	richard.purdie@linuxfoundation.org
References: <1441719935-22898-1-git-send-email-bruce.ashfield@windriver.com>
In-Reply-To: <1441719935-22898-1-git-send-email-bruce.ashfield@windriver.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH] bsps: update 3.14 SRCREVs
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
X-List-Received-Date: Tue, 08 Sep 2015 19:31:27 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Bruce,

Are these changes (kernel updates) appropriate for Dizzy?

regards,
Armin

On 09/08/2015 06:45 AM, Bruce Ashfield wrote:
> Updating the 3.14 SRCREVs to ensure that both gcc 4.9.x and gcc 5.x
> produce working images for all reference BSPs.
> 
> Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> ---
>  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
> index d1497a8038a4..589ece73c25d 100644
> --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
> +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_3.14.bbappend
> @@ -7,11 +7,11 @@ KBRANCH_mpc8315e-rdb = "standard/fsl-mpc8315e-rdb"
>  KMACHINE_genericx86 ?= "common-pc"
>  KMACHINE_genericx86-64 ?= "common-pc-64"
>  
> -SRCREV_machine_genericx86 ?= "550f5379bc4b001f656e7c98165606e543d0858c"
> -SRCREV_machine_genericx86-64 ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
> -SRCREV_machine_edgerouter ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
> -SRCREV_machine_beaglebone ?= "302ca233332fd364ecd028a0cf21b4cdc045e056"
> -SRCREV_machine_mpc8315e-rdb ?= "fdf979958c000ff805cd17be17310167becd6bb9"
> +SRCREV_machine_genericx86 ?= "af1f7f586bd32d39c057f17606991b887eadb389"
> +SRCREV_machine_genericx86-64 ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
> +SRCREV_machine_edgerouter ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
> +SRCREV_machine_beaglebone ?= "578602a722dbfb260801f3b37c6eafd2abb2340d"
> +SRCREV_machine_mpc8315e-rdb ?= "1cb1bbaf63cecc918cf36c89819a7464af4c4b13"
>  
>  COMPATIBLE_MACHINE_genericx86 = "genericx86"
>  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> 

