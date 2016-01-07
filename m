Return-Path: <pj0585@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D56DE00CA0; Wed,  6 Jan 2016 22:44:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (pj0585[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AEB1AE00ADD
	for <poky@yoctoproject.org>; Wed,  6 Jan 2016 22:44:09 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id f206so84871033wmf.0
	for <poky@yoctoproject.org>; Wed, 06 Jan 2016 22:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=gr7Y7ysa0ju2Df7HbNHny0AbnY4Y/jc4db1zGEtVVNo=;
	b=T4fr72PMVXZ2f9WcmZzZWnEpdHuIJ6ND8TSS48H/dk4VJfPUfx6BkELJsAOREFUlsO
	O2HgBD6zl122OIfpsv/qvdnN/dXFtjr+i2RcIDFQBskguB5F+DHCItc/20yDPDV9CuTi
	nGMUckbTXovNneWYaV1oH/OLZrXV5s8OXdjtYnQ1Au69w0MxluLanazomQNW0tZUk2w1
	4IwERjt8/xOpPQS/Z/Vs+yW2/v8Pq57lZFxtpgB4ehaQQ0fNekmJ6uodxHAVnmVurPr8
	iT7BxZU9IaQYjyCOUeE9mqWBh+nH0wWLpXUuVo/u5xHgIghCxQwLjBC6u3W+G8eU/VZb
	hh+g==
MIME-Version: 1.0
X-Received: by 10.28.156.213 with SMTP id f204mr14059502wme.57.1452149048411; 
	Wed, 06 Jan 2016 22:44:08 -0800 (PST)
Received: by 10.28.215.132 with HTTP; Wed, 6 Jan 2016 22:44:08 -0800 (PST)
In-Reply-To: <5302253.MIjrOEHnWu@peggleto-mobl.ger.corp.intel.com>
References: <CAA2DH4twfBS9UKcD+c15W7YQPD=yKyN83uTpaV31Zgohs9ivzQ@mail.gmail.com>
	<CAA2DH4sZdhuOwzqNNoSCkfAfoojMhXuzaArcp3brtzqwQ3guMA@mail.gmail.com>
	<5302253.MIjrOEHnWu@peggleto-mobl.ger.corp.intel.com>
Date: Thu, 7 Jan 2016 12:14:08 +0530
Message-ID: <CAA2DH4shqcGwNCd5RJq9LN9_rCPf_WrR+Vy-=UtdYExZ1S=wDw@mail.gmail.com>
From: Prasant J <pj0585@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: PACKAGE_EXCLUDE not working (Custom layer)
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
X-List-Received-Date: Thu, 07 Jan 2016 06:44:10 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 7, 2016 at 7:01 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Mon, 28 Dec 2015 20:56:37 Prasant J wrote:
>> On Wed, Dec 23, 2015 at 8:51 PM, Prasant J <pj0585@gmail.com> wrote:
>> >
>> > I'm creating a custom layer for my imx6 based setup.
>> >
>> > In build/conf/local.conf I have added: PACKAGE_EXCLUDE = "imx-lib
>> > imx-test"
>> > but my custom image still tries to build these packages.
>> >
>> >
>> > Can someone please point out the helpful debug commands/steps to figure
>> > out
>> > why these packages are being included?
>> >
>> > Can PACKAGE_EXCLUDE be overridden if some other package depends on the
>> > excluded packages and is included?
>> >
>> >
>> > In my package exclude list I added other package groups that bring imx-lib
>> > & imx-test but still its being build. Any inputs will be of help!
>>
>> I excluded the packages by adding IMAGE_INSTALL_remove = " imx-test
>> imx-lib " to my image recipe.
>
> If this is actually working, and you're using your own custom image recipe why
> not just omit those packages from IMAGE_INSTALL there?
>
> Cheers,
> Paul
>

Good question Paul!

Creating my own image may mean more maintenance work for me to keep it
up with the latest releases. My custom image recipe is a very simple
recipe that appends packages to the default image (This works for me..
at least up till now).


Regards, PJ

