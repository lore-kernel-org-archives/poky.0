Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id CE1CD4C80F9A
	for <poky@yoctoproject.org>; Wed, 11 May 2011 09:59:22 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4BExLY0019312
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 11 May 2011 07:59:21 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 11 May 2011 07:59:21 -0700
Message-ID: <4DCAA448.2030205@windriver.com>
Date: Wed, 11 May 2011 10:59:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.15) Gecko/20110419 Thunderbird/3.1.9 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1305058857.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1305058857.git.tom.zanussi@intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [KERNEL][linux-yocto-dev PATCH 0/1] merge emgd feature branch into crownbay for 2.6.39
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
X-List-Received-Date: Wed, 11 May 2011 14:59:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-10 04:48 PM, Tom Zanussi wrote:
> From: Tom Zanussi<tom.zanussi@intel.com>
>
> This merges the yocto/emgd topic branch into the crownbay branch for 2.6.39.
>
> Please pull into linux-yocto-dev.
>
> Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
>    Branch: tzanussi/meta-emgdmerge-2.6.39
>    Browse: http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/meta-emgdmerge-2.6.39

merged, and tested here. works nicely.

Bruce

>
> Tom Zanussi (1):
>    bsp/crownbay: merge emgd branch
>
>   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc |    2 ++
>   1 files changed, 2 insertions(+), 0 deletions(-)
>


