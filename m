Return-Path: <hector@ikatu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBDB7E00C59; Wed, 16 Jan 2019 06:11:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from malena.ikatu.net (malena.ikatu.net [190.0.137.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 122B0E00C29
	for <poky@yoctoproject.org>; Wed, 16 Jan 2019 06:11:15 -0800 (PST)
Received: (qmail 30153 invoked by uid 0); 16 Jan 2019 14:19:52 -0000
Received: from roos.ikatu.net (HELO ?192.168.0.171?)
	(hector@ikatu.com@190.0.137.198)
	by malena.ikatu.net with SMTP; 16 Jan 2019 14:19:51 -0000
To: "Burton, Ross" <ross.burton@intel.com>
References: <7d48f265-39e9-663c-f229-8dadfc22083f@ikatu.com>
	<CAJTo0Lbpgpv98hiSdNV1Ja6TJQ-TV5CgjpQxYxhoyW4+-fL58Q@mail.gmail.com>
	<8297d115-346e-6f28-cd00-fee40b2893f6@ikatu.com>
	<CAJTo0LY_88cfT1gPBYzU0sv2YjfW4yhzwu8_GgQPXOu2ZbgNEw@mail.gmail.com>
From: Hector Almeida <hector@ikatu.com>
Message-ID: <9f014eeb-9b79-1204-174b-3db5f8908587@ikatu.com>
Date: Wed, 16 Jan 2019 11:11:02 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LY_88cfT1gPBYzU0sv2YjfW4yhzwu8_GgQPXOu2ZbgNEw@mail.gmail.com>
X-Kalio-Sanitizer: ClamAV
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: systemd and sysvinit enabled in DISTRO_FEATURES
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
X-List-Received-Date: Wed, 16 Jan 2019 14:11:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Ross,


thanks for all the clarifications!


Best regards,

Hector


On 15/1/19 07:51, Burton, Ross wrote:
> On Tue, 15 Jan 2019 at 01:12, Hector Almeida <hector@ikatu.com> wrote:
>> For example, in connman's recipe, the 'connman' sysvinit script is installed if 'DISTRO_FEATURES' contains 'sysvinit'. But then, is there any other procedure that would delete this file from an image the chooses systemd as init manager?
> Sorry, it was late and I didn't quite read your mail properly.
>
> Packages are built once for all configurations.  If you want a single
> configuration that builds two images, one using systemd and one using
> sysvinit, then the packages you build will have both systemd units and
> init scripts in so that the packages are usable under both.  systemd
> will ignore the init scripts if a unit with the same name exists, and
> sysvinit obviously ignores the units.
>
> If you really want to delete the units in your sysv image to save
> every byte, then you can use a rootfs post-process hook to delete
> them.  We're talking a few kb, however.
>
> Ross
>

