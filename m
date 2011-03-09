Return-Path: <Kai.Kang@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6FFB74C8009A
	for <poky@yoctoproject.org>; Wed,  9 Mar 2011 00:51:57 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p296pu1Z010065
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <poky@yoctoproject.org>; Tue, 8 Mar 2011 22:51:57 -0800 (PST)
Received: from [128.224.163.157] (128.224.163.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Tue, 8 Mar 2011 22:51:56 -0800
Message-ID: <4D772372.7010803@windriver.com>
Date: Wed, 9 Mar 2011 14:51:30 +0800
From: Kang Kai <Kai.Kang@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Thunderbird/3.1.7
MIME-Version: 1.0
To: <poky@yoctoproject.org>
References: <cover.1299254646.git.dongxiao.xu@intel.com>	<11d60c5b1494c8c796d5e5020bcbb1285c769a73.1299254646.git.dongxiao.xu@intel.com>	<20110308140320.GG23315@kyu3-hedt>
	<4D7715F6.3070401@windriver.com>
In-Reply-To: <4D7715F6.3070401@windriver.com>
X-Originating-IP: [128.224.163.157]
Subject: Re: current master tree build failed.
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
X-List-Received-Date: Wed, 09 Mar 2011 06:51:57 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 2011年03月09日 13:53, Kang Kai wrote:
> Hi,
>
> I pull the master tree and HEAD is 
> fab742bd4693ed3092690a20dd32d53fe27c3d4c. When I run bitbake, I got 
> the error message:
>
> ERROR: Poky's config sanity checker detected a potential 
> misconfiguration.
> Either fix the cause of this error or at your own risk disable the 
> checker (see sanity.conf).
> Following is the list of potential problems / advisories:
>
> Please set TARGET_OS directly, or choose a MACHINE or DISTRO that does 
> so.
> DISTRO 'poky' not found. Please set a valid DISTRO in your local.conf
>
> What can I do to remove this? Thanks.
>
> Regards,
> Kang Kai
> _______________________________________________
> poky mailing list
> poky@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/poky
Solved. Many thanks to Jingdong.
add meta-yocto directory to conf/bblayers.conf.



