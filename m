Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F870E00A44
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:07:02 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id j7so1971687qaq.8
	for <poky@yoctoproject.org>; Wed, 26 Mar 2014 04:07:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TOzE0i6mwIu4oTGGdkjIPsD4U3ryCimzuDqgc5NzHpE=;
	b=cD5LKQunZsNNUbVIBLGzcxU2PBLti+XmP06q57QMvgi02urXzGm9E8xDNCxCehtTIE
	dL30oV4DXMD0tcIGYuaCe5z9xPnUzo6KJ246JBE7Y1b7rt+3nj7tQuwI3w1H08fpFNIc
	4ZHkuLjPUs5wwVh6xuqbh+63Z6p7AUSp1yGO/ENjPPBDWcn3WMlnZi1MrriXBpH1s07t
	wU21kWqfAEnPL10OmsRFkXyCIOm7wzxArw6bfc4+Slm768n16yXI7u4KexNE7UUzgg+E
	IETGDvVN03ChVMuuOOhAPpuNPRaDbKy7jPpyyRen8nMbrrInbQQG63sb2A2eEaI9HQTp
	rUag==
X-Gm-Message-State: ALoCoQlgtBC62GjhLkqBJC5moEv7CF+lAJXn71DzfwEZketS85IgQ1+WiO5HxcD6IipnPfcWtSo/
X-Received: by 10.140.106.195 with SMTP id e61mr83479648qgf.66.1395832021503; 
	Wed, 26 Mar 2014 04:07:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.27.167 with HTTP; Wed, 26 Mar 2014 04:06:41 -0700 (PDT)
In-Reply-To: <5332B167.4060707@visionaid.com>
References: <53329F23.8020307@visionaid.com>
	<CAJTo0LZUE-QAmPGysmwxCfxSajms8-VhWTXcunjMgW8bMAYNqw@mail.gmail.com>
	<5332B167.4060707@visionaid.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 26 Mar 2014 11:06:41 +0000
Message-ID: <CAJTo0LYDjA0+R1LnkyXi7013uYwjZtoGWzbxE-+FJXuGpgLoaA@mail.gmail.com>
To: Jeremy Powell <jeremy@visionaid.com>
Cc: Poky Project <poky@yoctoproject.org>
Subject: Re: Poky core-image-minimal fails to build with package_deb
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
X-List-Received-Date: Wed, 26 Mar 2014 11:07:02 -0000
Content-Type: text/plain; charset=UTF-8

On 26 March 2014 10:52, Jeremy Powell <jeremy@visionaid.com> wrote:
> On 26/03/14 10:14, Burton, Ross wrote:
>>
>> On 26 March 2014 09:34, Jeremy Powell <jeremy@visionaid.com> wrote:
>>>
>>> I'm trying to build poky from the git master head, but there are several
>>> problems in the DpkgIndexer class in ./meta/lib/oe/package_manager.py
>>
>> Can you file a bug for these issues please (reply here with the number
>> so it doesn't get lost).
>>
>> Ross
>
>
> Hi Ross - thanks for your reply. I've created an account on
> bugzilla.yoctoproject.org, but its not clear to me which product this bug
> would refer to. Meta-yocto or  OE-Core perhaps?

oe-core, component deployment.

Ross

