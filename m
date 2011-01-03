Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82A3B4C81118
	for <poky@yoctoproject.org>; Mon,  3 Jan 2011 13:06:45 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Jan 2011 11:06:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,267,1291622400"; d="scan'208";a="693146031"
Received: from doubt.jf.intel.com (HELO [10.7.199.57]) ([10.7.199.57])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2011 11:06:45 -0800
Message-ID: <4D221E48.8080301@linux.intel.com>
Date: Mon, 03 Jan 2011 11:06:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1294076797.git.dvhart@linux.intel.com>
	<208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
In-Reply-To: <208c2ab8458c67e1b5bc1e22f7c277f1c6d7cd01.1294076797.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 4/4] kernelshark: add ftrace gui viewer
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
X-List-Received-Date: Mon, 03 Jan 2011 19:06:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/28/2010 05:10 PM, Darren Hart wrote:
> The trace-cmd source includes a graphical trace viewer, but we
> don't want to make the trace-cmd recipe depend on gtk+. This
> patch adds a second recipe in the meta/recipes-kernel/trace-cmd
> directory which uses the trace-cmd SRCREV and RDEPENDS on trace-cmd
> to ensure compatibility.
>
> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> CC: Tom Zanussi<tom.zanussi@intel.com>
> ---
>   meta/recipes-kernel/trace-cmd/kernelshark_git.bb |   22 ++++++++++++++++++++++
>   1 files changed, 22 insertions(+), 0 deletions(-)
>   create mode 100644 meta/recipes-kernel/trace-cmd/kernelshark_git.bb
>
> diff --git a/meta/recipes-kernel/trace-cmd/kernelshark_git.bb b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> new file mode 100644
> index 0000000..781f983
> --- /dev/null
> +++ b/meta/recipes-kernel/trace-cmd/kernelshark_git.bb
> @@ -0,0 +1,22 @@
> +DESCRIPTION = "Graphical trace viewer for Ftrace"
> +LICENSE = "GPLv2"
> +LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe \
> +                    file://kernelshark.c;beginline=6;endline=8;md5=2c22c965a649ddd7973d7913c5634a5e"

This should have been kernel-shark.c. A failed thermal cleaning of the 
previous build resulted in my not catching it. I have fixed this in my 
contrib branch, but won't resend the patch series unless requested.

-- 
Darren Hart


