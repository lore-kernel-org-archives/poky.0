Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AFD91E00C46; Thu,  3 Jan 2019 19:46:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C5BE00BE8
	for <poky@yoctoproject.org>; Thu,  3 Jan 2019 19:46:16 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x043kDCC010338
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Jan 2019 19:46:13 -0800 (PST)
Received: from [128.224.163.218] (128.224.163.218) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Thu, 3 Jan 2019 19:46:13 -0800
From: Kang Kai <Kai.Kang@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	<poky@yoctoproject.org>, openembedded-core
	<openembedded-core@lists.openembedded.org>
References: <cover.1544102766.git.kai.kang@windriver.com>
	<c2e11d2a6ebb8da6177c0b0d7174a0e2047093db.1544102766.git.kai.kang@windriver.com>
	<81b73451de8a9149beda328186cbdf4adb4452ea.camel@linuxfoundation.org>
Message-ID: <fa468ec4-72b3-3d6d-830d-8a38bf81a0c1@windriver.com>
Date: Fri, 4 Jan 2019 11:43:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <81b73451de8a9149beda328186cbdf4adb4452ea.camel@linuxfoundation.org>
Subject: Re: [meta-poky][PATCH 1/1] local.conf.sample: make systemd as default init manager
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
X-List-Received-Date: Fri, 04 Jan 2019 03:46:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2018/12/10 上午2:12, Richard Purdie wrote:
> On Thu, 2018-12-06 at 20:53 +0800,kai.kang@windriver.com  wrote:
>> From: Kai Kang<kai.kang@windriver.com>
>>
>> Move configurations from local.conf.sample.extended to
>> local.conf.sample
>> to make systemd as default init manager for poky.
>>
>> [YOCTO #13031]
>>
>> Signed-off-by: Kai Kang<kai.kang@windriver.com>
>> ---
>>   meta-poky/conf/local.conf.sample          | 8 ++++++++
>>   meta-poky/conf/local.conf.sample.extended | 8 --------
>>   2 files changed, 8 insertions(+), 8 deletions(-)
> I had a feeling there would be some issues to fix before we could do
> this by default:
>
> systemd fails to compile with x32:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/57/builds/76


Fixed.


> sanity tests on qemux86-64 core-image-sato-sdk:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/73/builds/77/steps/7/logs/step1c

| RESULTS - stap.StapTest.test_stap - Testcase 1652: FAILED (674.37s)

Can't reproduce.


> sanity tests on qemuarm core-image-sato-sdk with poky-lsb:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/38/builds/77/steps/7/logs/step1c
>
> dpkg issues:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/76/builds/77/steps/7/logs/step2c
> https://autobuilder.yoctoproject.org/typhoon/#/builders/50/builds/77/steps/7/logs/step1c

| RESULTS - parselogs.ParseLogsTest.test_parselogs - Testcase 1059: 
FAILED (36.92s)

Can't reproduce


> wic failure:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/56/builds/33/steps/7/logs/step2d
> (postinstall problem?)

wic.Wic.test_iso_image: can't reproduce

wic.Wic2.test_iso_image: RR sendgb


> musl sanity test issue:
> https://autobuilder.yoctoproject.org/typhoon/#/builders/64/builds/77/steps/7/logs/step1c
> https://autobuilder.yoctoproject.org/typhoon/#/builders/45/builds/78/steps/7/logs/step1c

| RESULTS - systemd.SystemdJournalTests.test_systemd_boot_time - 
Testcase -1: SKIPPED (0.19s)

Fixed.


Would you like to try this patch again? Thanks.


--Kai


>
> Hopefully its a small number of issues at the heart of this but we need
> to sort this out before it can merge.
>
> Cheers,
>
> Richard
>
>
>

-- 
Kai Kang


