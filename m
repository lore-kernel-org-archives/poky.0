Return-Path: <Dengke.Du@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63643E00DD0; Mon,  9 Jul 2018 19:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1D9FE00DA5
	for <poky@yoctoproject.org>; Mon,  9 Jul 2018 19:09:22 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6A29LN6003975
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jul 2018 19:09:21 -0700 (PDT)
Received: from [128.224.162.149] (128.224.162.149) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 9 Jul 2018 19:09:20 -0700
To: John Tobias <john.tobias.ph@gmail.com>, <poky@yoctoproject.org>
References: <CACUGKYOiv-Waks6G3x41798c2SfKtCkWvjhfcMOLLbaoQwPz=g@mail.gmail.com>
From: Dengke Du <dengke.du@windriver.com>
Message-ID: <b389ec52-a33c-e36a-0fa8-a5b555f2a5db@windriver.com>
Date: Tue, 10 Jul 2018 10:06:19 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <CACUGKYOiv-Waks6G3x41798c2SfKtCkWvjhfcMOLLbaoQwPz=g@mail.gmail.com>
X-Originating-IP: [128.224.162.149]
Subject: Re: Poky (suma) switching to systemd
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
X-List-Received-Date: Tue, 10 Jul 2018 02:09:24 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Add :

     KERNEL_FEATURES_append = " cfg/systemd.scc"

to conf/local.conf file


On 2018年07月10日 01:00, John Tobias wrote:
> Hello All,
>
> I was trying to switch to systemd so, I followed the
> meta-poky/conf/local.conf.sample.extended documentation to add the
> following (below) into my local.conf.
> DISTRO_FEATURES_append = " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
>
> I ran 'bitbake core-image-minimal' and saw the systemd was compiling.
> When the bitbake raturned, I checked the image directory and did not
> see the any rootfs images.
>
> I would like to know if anyone successfully switching to systemd in poky?.
>
> Note: If I build an image without switch to systemd, the bitbake
> produces an rootfs images.
>
> Regards,
>
> John


