Return-Path: <Tom_Rini@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by mx1.pokylinux.org (Postfix) with ESMTP id B3A864C808B6
	for <poky@yoctoproject.org>; Mon, 22 Nov 2010 19:09:48 -0600 (CST)
Received: from svr-orw-fem-01.mgc.mentorg.com ([147.34.98.93])
	by relay1.mentorg.com with esmtp 
	id 1PKhOF-0003ir-TG from Tom_Rini@mentor.com 
	for poky@yoctoproject.org; Mon, 22 Nov 2010 17:09:47 -0800
Received: from na2-mail.mgc.mentorg.com ([134.86.114.213]) by
	svr-orw-fem-01.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Mon, 22 Nov 2010 17:09:47 -0800
Received: from [172.30.80.10] ([172.30.80.10]) by na2-mail.mgc.mentorg.com
	with Microsoft SMTPSVC(6.0.3790.3959); 
	Mon, 22 Nov 2010 18:09:46 -0700
Message-ID: <4CEB1458.9070503@mentor.com>
Date: Mon, 22 Nov 2010 18:09:44 -0700
From: Tom Rini <tom_rini@mentor.com>
Organization: Mentor Graphics Corporation
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Lightning/1.0b1 Thunderbird/3.0.10
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1290467442.git.tom.zanussi@intel.com>
	<01abe3ae64c0ee6fde2fc813abe6e8ca39dc0720.1290467442.git.tom.zanussi@intel.com>
In-Reply-To: <01abe3ae64c0ee6fde2fc813abe6e8ca39dc0720.1290467442.git.tom.zanussi@intel.com>
X-OriginalArrivalTime: 23 Nov 2010 01:09:46.0889 (UTC)
	FILETIME=[1EAD0F90:01CB8AAB]
Subject: Re: [PATCH 1/1] blktrace: new package
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
X-List-Received-Date: Tue, 23 Nov 2010 01:09:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/22/2010 04:07 PM, Tom Zanussi wrote:
> Add blktrace, a tool for generating traces of the I/O traffic on block
> devices.
[snip]
> diff --git a/meta/recipes-core/tasks/task-poky-tools.bb b/meta/recipes-core/tasks/task-poky-tools.bb
> index 0a2533c..90361ba 100644
> --- a/meta/recipes-core/tasks/task-poky-tools.bb
> +++ b/meta/recipes-core/tasks/task-poky-tools.bb
> @@ -46,7 +46,8 @@ RDEPENDS_task-poky-tools-profile = "\
>   RRECOMMENDS_task-poky-tools-profile = "\
>       perf \
>       trace-cmd \
> -    kernel-module-oprofile"
> +    kernel-module-oprofile \
> +    blktrace"

Can I suggest making this:
     blktrace \
"
?  That's usually how frequently added-to variables are treated, or 
should be imho.

-- 
Tom Rini
Mentor Graphics Corporation

