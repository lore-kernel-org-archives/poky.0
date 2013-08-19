Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A419E003E2
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 16:10:35 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id ia10so3466282vcb.34
	for <poky@yoctoproject.org>; Mon, 19 Aug 2013 16:10:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=uzRr4Rad0ibqwl2ml9B9jZHnmLCi9ACH/EARjlqt9IY=;
	b=cL5A5QrZvryFFtpfITU4L3DFlxOfeCD9dYznkKELKOIHpssQSooUQ1rA47TVxEe+fZ
	YyuCbNmcL69kgv3v2NM0+ToyAODwoc+Q0FuFJTBZBN0Tl2DWJlVGPWavGk+HnS0FdwMW
	tm4TM5yyRevC7WiMaAkxNvEU0JmVaLraehA0DBpybcu499YvB19A76CbmfkRYzVv8inq
	kNmWEEdHCP9cIvfOU/dIwgFFSe6U76pPrwqCjDsAShZNz7+zWuY/ypZ105Qh1y5tIuXm
	kA/QNP0c79zWOdUtF8WexTeMeRa7i96ek9WKjTJgUfhTF30JCMyWdHG3Pggmvip5IJL6
	zucg==
X-Gm-Message-State: ALoCoQlNjW5p7mNrNkV/8SUiqCVk9sdNQmdiqaY6IuGW3OsvV0oLilyfpMRc1Nc93Eacpdv1MOtk
MIME-Version: 1.0
X-Received: by 10.220.164.70 with SMTP id d6mr8109131vcy.19.1376953834969;
	Mon, 19 Aug 2013 16:10:34 -0700 (PDT)
Received: by 10.52.28.109 with HTTP; Mon, 19 Aug 2013 16:10:34 -0700 (PDT)
In-Reply-To: <1376949519.25999.65.camel@ted>
References: <1376948717-8206-1-git-send-email-elizabeth.flanagan@intel.com>
	<1376949519.25999.65.camel@ted>
Date: Mon, 19 Aug 2013 16:10:34 -0700
Message-ID: <CAPhnLPDbAFt8EPdBPE86Jrg14wXkFuupwj=GXNT_G6k=PMAUtQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Poky Project <poky@yoctoproject.org>
Subject: Re: [PATCH] SDK_NAME: Change to include image name and machine.
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
X-List-Received-Date: Mon, 19 Aug 2013 23:10:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

There apparently are differences caused by each machines tunings (for
example, meta-fsl-arm's imx53qsb is armv7a-vfp-neon, whereas qemuarm
is armv5te). With SDK_NAME as it is, you'd end up with two files that
have the exact same name and toolchains builds that are different.
Example. qemuarm's toolchain env setup should be named
'environment-setup-armv5te-poky-linux-gnueabi' but the toolchain I
just downloaded from the last master build is
'environment-setup-armv7a-vfp-neon-poky-linux-gnueabi' because it's
the toolchain from the meta-fsl-arm build. I'm not sure how deep the
issues go outside of these relatively small naming issues. ccing: Yi
Zhao as I'm sure he can tell us more.

I agree that TUNE_PKGARCH is probably a better solution than
TARGET_ARCH but with how I'm generating toolchains now (bitbake
core-image-sato  -c populate_sdk) I can see a day when having the
IMAGE_BASENAME included would be a very useful thing.

So, would anyone be opposed to:

SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${TUNE_PKGARCH}"

-b

On Mon, Aug 19, 2013 at 2:58 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Mon, 2013-08-19 at 14:45 -0700, Elizabeth Flanagan wrote:
>> [YOCTO #4618]
>>
>> When building out multiple toolchains with the same target arch
>> you can end up having toolchains with the same name. Making
>> the naming a bit more granular by adding IMAGE_BASENAME and
>> MACHINE to SDK_NAME
>>
>> Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
>> ---
>>  meta-yocto/conf/distro/poky.conf | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
>> index 7be7d92..f0da032 100644
>> --- a/meta-yocto/conf/distro/poky.conf
>> +++ b/meta-yocto/conf/distro/poky.conf
>> @@ -22,7 +22,7 @@ PREFERRED_VERSION_linux-yocto_qemumips ?= "3.8%"
>>  PREFERRED_VERSION_linux-yocto_qemumips64 ?= "3.8%"
>>  PREFERRED_VERSION_linux-yocto_qemuppc ?= "3.8%"
>>
>> -SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${TARGET_ARCH}"
>> +SDK_NAME = "${DISTRO}-${TCLIBC}-${SDK_ARCH}-${IMAGE_BASENAME}-${MACHINE}-${TARGET_ARCH}"
>>  SDKPATH = "/opt/${DISTRO}/${SDK_VERSION}"
>>
>>  EXTRAOPKGCONFIG = "poky-feed-config-opkg"
>
> Are there differences in the SDK/ADT tarball between machines?
>
> I appreciate its theoretically possible but in reality, they should be
> the same and if they're not we have various problems.
>
> Cheers,
>
> Richard
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

