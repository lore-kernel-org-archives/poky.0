Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 179E1E0075D
	for <poky@yoctoproject.org>; Tue,  6 Sep 2011 10:04:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p86H4kOU007910
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Sep 2011 10:04:46 -0700 (PDT)
Received: from [128.224.147.214] (128.224.147.214) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Tue, 6 Sep 2011 10:04:46 -0700
Message-ID: <4E6652A8.7000001@windriver.com>
Date: Tue, 6 Sep 2011 13:04:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.18) Gecko/20110617 Thunderbird/3.1.11 ThunderBrowse/3.8
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <cover.1315327540.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1315327540.git.dvhart@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 0/1] meta-yocto: linux-yocto: remove emenlow from bbappend
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
X-List-Received-Date: Tue, 06 Sep 2011 17:04:48 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-09-06 12:46 PM, Darren Hart wrote:
> The following changes since commit dbff56238e083d0110eb13c1f5a07716340fdfe4:
>
>    icu-3.6: fix building with big make -j (2011-09-06 16:37:02 +0100)

Ack'd. I was getting tired of updating this!

Bruce

>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib dvhart/noemenlow
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/noemenlow
>
> Darren Hart (1):
>    linux-yocto: remove emenlow from meta-yocto bbappend
>
>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    1 -
>   1 files changed, 0 insertions(+), 1 deletions(-)
>


