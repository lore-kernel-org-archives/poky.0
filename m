Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD195E0148D
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:30:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2K8UuWP013624
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Wed, 20 Mar 2013 01:30:56 -0700 (PDT)
Received: from [128.224.162.186] (128.224.162.186) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 20 Mar 2013 01:30:56 -0700
Message-ID: <514973BD.8080401@windriver.com>
Date: Wed, 20 Mar 2013 16:30:53 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1363765882.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1363765882.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 0/2] meta-yocto: remove several duplicated lines
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
X-List-Received-Date: Wed, 20 Mar 2013 08:30:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 03/20/2013 03:54 PM, Robert Yang wrote:
> The following changes since commit 808967b84cef66e0b59b9a720fa0808f6a546d3a:
>
>    qemuimage-testlib: Fix IP address handling (2013-03-19 23:35:01 +0000)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib robert/duplicated_yocto
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/duplicated

The git url is correct, but the http url isn't, it should be:

http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/duplicated_yocto

I'm sorry for that.

//Robert

>
> Robert Yang (2):
>    maintainers.inc: remove several duplicated lines
>    poky-floating-revisions.inc: remove the duplicated
>      SRCREV_pn-exmap-console
>
>   meta-yocto/conf/distro/include/maintainers.inc     |    7 -------
>   .../distro/include/poky-floating-revisions.inc     |    1 -
>   2 files changed, 0 insertions(+), 8 deletions(-)
>

