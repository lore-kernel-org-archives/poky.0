Return-Path: <avery.brian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4ECECE00CAD; Mon, 21 Sep 2015 15:01:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (avery.brian[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09B9CE0076A
	for <poky@yoctoproject.org>; Mon, 21 Sep 2015 15:01:43 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so88488266igc.1
	for <poky@yoctoproject.org>; Mon, 21 Sep 2015 15:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hHXo2M962LIuwzrs5TngT3jgvcH39YvNKx3uK1bZIhA=;
	b=EOjBhuGn/TVswjun7aVi9yBxyRvRMdVLehTJ+IxglzacaHG1uM4bLWWxRy7DHCRW2x
	UMDgZyPQGmUBSxXbrMu5W88501ZjXSEi3JBkb7a5HvxymeZ+Qp7GIafBuYiMGo8YKwSA
	9ySdWnQqr6fRx/zrxVSG9moZQUgvSgZuqDHMqAllFBaZdTJV5N8O/Q76w020IWtsjYgf
	PO3kEtczamrHcOXprVvE8uJOGH3t90Byhm43Q65SDgqwdQe+LrheaoUpGsZsOd/xCAhC
	+ltLpvIBZMYqgxnN9jgtLZkB/Wh0Yv2d1nO9mIaAf0YGjnIIxBpS8I66OHOEyfKDb2EL
	KUXg==
MIME-Version: 1.0
X-Received: by 10.50.62.112 with SMTP id x16mr12894606igr.23.1442872902626;
	Mon, 21 Sep 2015 15:01:42 -0700 (PDT)
Received: by 10.64.55.39 with HTTP; Mon, 21 Sep 2015 15:01:42 -0700 (PDT)
In-Reply-To: <21863624.fjl3rU3pSy@peggleto-mobl.ger.corp.intel.com>
References: <cover.1442710213.git.avery.brian@gmail.com>
	<CAJTo0LafTwo-xVgEXWokdReEb3es57kf2cda6+dsHS9i43qDiA@mail.gmail.com>
	<3091895.LLTqhN8z0X@peggleto-mobl.ger.corp.intel.com>
	<21863624.fjl3rU3pSy@peggleto-mobl.ger.corp.intel.com>
Date: Mon, 21 Sep 2015 15:01:42 -0700
Message-ID: <CAKV_0ejnTic0aXyL+kdiP=3=QhECtF=-N6-NV=nH=3a-4cgoBA@mail.gmail.com>
From: Brian Avery <avery.brian@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: poky@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-selftest: add error recipe and error-image
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
X-List-Received-Date: Mon, 21 Sep 2015 22:01:45 -0000
Content-Type: text/plain; charset=UTF-8

k. will do.
Thanks guys :)
-b

On Mon, Sep 21, 2015 at 8:13 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Monday 21 September 2015 16:06:51 Paul Eggleton wrote:
>> On Monday 21 September 2015 11:37:02 Burton, Ross wrote:
>> > On 20 September 2015 at 01:53, brian avery <avery.brian@gmail.com> wrote:
>> > > +++ b/meta-selftest/recipes-test/error/error.bb
>> > > @@ -0,0 +1,10 @@
>> > > +SUMMARY = "Error Test case that fails on do_compile"
>> > > +DESCRIPTION = "This generates a compile time error to be used to for
>> > > testing. Not currently used by oe-selftest"
>> > > +LICENSE = "MIT"
>> > > +LIC_FILES_CHKSUM =
>> > > "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de2042
>> > > 0"
>> > > +
>> > > +INHIBIT_DEFAULT_DEPS = "1"
>> > > +
>> > > +do_compile() {
>> > > +        false;
>> > > +}
>> >
>> > Would it be sensible to addEXCLUDE_FROM_WORLD to this so it doesn't get
>> > built in world builds if meta-selftest is enabled?
>>
>> Good idea; one more - use bbfatal with a message like "failing as expected"
>> or similar. I think "Not currently used by oe-selftest" can be dropped as
>> well, that's likely to change in the near future.
>
> Another thing - meta-selftest is part of openembedded-core - so this should be
> sent to the openembedded-core@lists.openembedded.org mailing list.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

