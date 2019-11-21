Return-Path: <zhengjunling@huawei.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E88CE00E4F; Wed, 20 Nov 2019 23:35:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,FORGED_SPF_HELO,
	RCVD_IN_DNSWL_MED,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [45.249.212.190 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
X-Greylist: delayed 951 seconds by postgrey-1.32 at yocto-www;
	Wed, 20 Nov 2019 23:35:01 PST
Received: from huawei.com (szxga04-in.huawei.com [45.249.212.190])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C1B6E00E3D
	for <poky@yoctoproject.org>; Wed, 20 Nov 2019 23:35:01 -0800 (PST)
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 19365D53901B9CC4EEC9;
	Thu, 21 Nov 2019 15:19:07 +0800 (CST)
Received: from [127.0.0.1] (10.111.155.88) by DGGEMS414-HUB.china.huawei.com
	(10.3.19.214) with Microsoft SMTP Server id 14.3.439.0; Thu, 21 Nov 2019
	15:18:59 +0800
To: <poky@yoctoproject.org>, Richard Purdie
	<richard.purdie@linuxfoundation.org>
From: Junling Zheng <zhengjunling@huawei.com>
Message-ID: <13c1169c-fcba-7b49-ea23-0531cc497282@huawei.com>
Date: Thu, 21 Nov 2019 15:18:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
X-Originating-IP: [10.111.155.88]
X-CFilter-Loop: Reflected
Cc: Wang Nan <wangnan0@huawei.com>
Subject: Python2 maintenance will expired
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
X-List-Received-Date: Thu, 21 Nov 2019 07:35:03 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Hi, Richard

Python 2.7 will not be maintained past January 1, 2020 :(

Some codes in yocto/poky are not compatible with Python 3.

Does yocto/poky have any measures for this?

Thanks,

Junling


