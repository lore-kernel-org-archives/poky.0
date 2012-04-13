Return-Path: <saul.wold@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1BD3E0059A
	for <poky@yoctoproject.org>; Fri, 13 Apr 2012 15:15:19 -0700 (PDT)
Received: from mail-pz0-f44.google.com ([209.85.210.44])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 13 Apr 2012 15:15:18 -0700
Received: by dadz14 with SMTP id z14so14537726dad.17
	for <poky@yoctoproject.org>; Fri, 13 Apr 2012 15:15:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=Yw2u8uz0PY9M891lKWDUG94tfVdLubb5YDDgV9e7Z4c=;
	b=Nfi25ccKLm3FHMQ2TcW3cuI9JCG2ndXvUMKXgyc4cIXblp3Wrrr78KvghzlfZ5nJST
	wrxa3P/tPLHMXUqud6KgPi4puzUjfTrkFDU1pH5SI8TGzxPDp6xcN2PF7UFXhzPjxpUV
	Wm5nqbeCqredCHrj9fpLd1qF/iykFOxXJ4U7FUcFK2FbSEQrNEOoP54F80jrnAmCV+4k
	sTzw8xQH/Kkkte6Dwi29kkQSvyEKsxlkvwqW4Bf57k8O/3dYur10Cs8Bb2AdbXkJYPCe
	oXlwqJeDKENgNjwQhKN6WuzNCYDcCVPlV8AFBhU0K/b1oXy1qLIhslNk+oTo4x0pYUfI
	OfgQ==
Received: by 10.68.125.226 with SMTP id mt2mr7967050pbb.38.1334355318434;
	Fri, 13 Apr 2012 15:15:18 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id o2sm9816285pbq.61.2012.04.13.15.15.16
	(version=SSLv3 cipher=OTHER); Fri, 13 Apr 2012 15:15:17 -0700 (PDT)
Message-ID: <4F88A572.6010300@intel.com>
Date: Fri, 13 Apr 2012 15:15:14 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1334349467.git.bruce.ashfield@windriver.com>
In-Reply-To: <cover.1334349467.git.bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQk2QO/cqVzTfr0MrpciHlsUN1hY1PgVyMwbWCXwLk2bdDbx/jS9Yk0jNj2Nln0MJoQHz1ib
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] linux-yocto/meta-yocto: update hardware reference SRCREVs
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
X-List-Received-Date: Fri, 13 Apr 2012 22:15:19 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/13/2012 01:40 PM, Bruce Ashfield wrote:
> Richard/Saul,
>
> When I bumped the reference boards to v3.0.34 a merge commit was missed.
> This wasn't immediately visible since for most boards, it didn't matter,
> and for the one that it did .. the board built fine:
>
> Here's the patch commit header repeated:
>
> [
>    commit 8cd31f9b0 linux-yocto/meta-yocto: update hardware reference boards to v3.0.24
>
>    Missed a merge commit on the hardware reference BSP branches.
>
>    As a result, validate_branches is adjusting the tree to build the
>    proper SRCREV. For machines with board specific commits this means
>    that some of their commits are missing, which leads to boot failure.
>
>    Bumping the SRCREVs fixes the problem
> ]
>
> Fixes [YOCTO: #2292]
>
> Cheers,
>
> Bruce
>
>
> The following changes since commit 04b16f1038f7cae445d741e86c2cc19c70f991c1:
>
>    rpm-native: Compile python rpm module (with-python) (2012-04-13 16:04:12 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib zedd/kernel-yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto
>
> Bruce Ashfield (1):
>    linux-yocto/meta-yocto: update hardware reference SRCREVs
>
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    8 ++++----
>   1 files changed, 4 insertions(+), 4 deletions(-)
>

Merged into Poky Master

Thanks	
	Sau!

