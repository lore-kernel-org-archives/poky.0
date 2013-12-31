Return-Path: <Liezhi.Yang@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D27AE007EC
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 18:45:22 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id rBV2jLnY003460
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Mon, 30 Dec 2013 18:45:21 -0800 (PST)
Received: from [128.224.162.226] (128.224.162.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.2.347.0;
	Mon, 30 Dec 2013 18:45:20 -0800
Message-ID: <52C22FBF.9030709@windriver.com>
Date: Tue, 31 Dec 2013 10:45:19 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1388156619.git.liezhi.yang@windriver.com>
In-Reply-To: <cover.1388156619.git.liezhi.yang@windriver.com>
Subject: Re: [PATCH 0/2] update upstream_tracking.inc and maintainers.inc
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
X-List-Received-Date: Tue, 31 Dec 2013 02:45:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit


Please ignore this one, I will send an update one.

// Robert

On 12/27/2013 11:04 PM, Robert Yang wrote:
> The following changes since commit 005af45191ded6185c618c708181b31281e43092:
>
>    bitbake: fetch2: avoid printing "no checksum" error message twice (2013-12-22 14:29:13 +0000)
>
> are available in the git repository at:
>
>    git://git.pokylinux.org/poky-contrib robert/maintainer
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=robert/maintainer
>
> Robert Yang (2):
>    upstream_tracking.inc: remove several entries
>    maintainers.inc: reassign tzcode-native
>
>   meta-yocto/conf/distro/include/maintainers.inc       |  2 +-
>   meta-yocto/conf/distro/include/upstream_tracking.inc | 13 -------------
>   2 files changed, 1 insertion(+), 14 deletions(-)
>

