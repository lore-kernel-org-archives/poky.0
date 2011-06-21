Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 21B164C800A9
	for <poky@yoctoproject.org>; Mon, 20 Jun 2011 22:40:36 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p5L3eYrC013167
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 20 Jun 2011 20:40:34 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (147.11.119.177) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Mon, 20 Jun 2011 20:40:33 -0700
Message-ID: <4E0012B0.4060207@windriver.com>
Date: Mon, 20 Jun 2011 23:40:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.18) Gecko/20110613 Thunderbird/3.1.11
MIME-Version: 1.0
To: <nitin.a.kamble@intel.com>
References: <cover.1308618114.git.nitin.a.kamble@intel.com>
In-Reply-To: <cover.1308618114.git.nitin.a.kamble@intel.com>
Cc: dvhart@linux.intel.com, poky@yoctoproject.org
Subject: Re: [PATCH 0/1] new kernel feature btrfs
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
X-List-Received-Date: Tue, 21 Jun 2011 03:40:36 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-06-20 9:05 PM, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>
>
> The following changes since commit 8888d948e0ddbc5f37bd3dc23cc1b398ab230e2e:
>
>    meta: add utrace feature for linux-yocto (2011-06-16 15:41:23 -0400)
>
> are available in the git repository at:
>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib nitin/btrfs
>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=nitin/btrfs

Looks good here. I'm doing a config update at the moment, and I've
pulled it into 2.6.37, once in, it'll propagate through to the dev
kernels and follow us as we update.

Cheers,

Bruce

>
> Nitin A Kamble (1):
>    btrfs.scc,cfg: add a new feature which enables btrfs kernel
>      configuration
>
>   meta/cfg/kernel-cache/cfg/btrfs.cfg |    2 ++
>   meta/cfg/kernel-cache/cfg/btrfs.scc |    1 +
>   2 files changed, 3 insertions(+), 0 deletions(-)
>   create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.cfg
>   create mode 100644 meta/cfg/kernel-cache/cfg/btrfs.scc
>


