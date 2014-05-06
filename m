Return-Path: <saul.wold@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 06A06E00B30; Tue,  6 May 2014 09:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.49 listed in list.dnswl.org]
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F38BE00A44
	for <poky@yoctoproject.org>; Tue,  6 May 2014 09:48:40 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id lj1so6061343pab.22
	for <poky@yoctoproject.org>; Tue, 06 May 2014 09:48:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:organization:user-agent
	:mime-version:to:subject:content-type:content-transfer-encoding;
	bh=uqKhxAsMjJUYEvmYel2XFHyLSS4BIlBP6qjD3gV/aCE=;
	b=nEUI6mZcrqcD/H2LgTrgIHM+UNIG51sD2J1FvMklLWD3pF7CIvXV3o5xlBJbplUYX7
	O2ijFtc6GCVSi6mcy5PqONEM5akp1BtfMLD5K7i+w6v3ZovL3IIVnClba7ljBMdJlJ7v
	hXhKYFW6yUhEM96DNW6f1sGBzmTVPEwl0t1FxHwTG4xkpD6lRsIv360GUWExae+z5EXz
	ez3q2f/DUAFuu+PtdtSD6HfKDRZ8FvlYUwrucwoYB7Q6aHbi9VrQ6El85PcznbMJk9eB
	tm678XkSpcD89sGrq83GhNfnXFk/utzU1YNH0YPXg5dbqhSshRtQB+drutXLkJAZZOh2
	HATw==
X-Gm-Message-State: ALoCoQnmT+dNo6GBiMluRK+t/ExRY4/yxv+r8tHUINF2Y+HpbxxPqZZ5PC6zwoA/jtQH66S/heDr
X-Received: by 10.66.136.103 with SMTP id pz7mr8220553pab.140.1399394919765;
	Tue, 06 May 2014 09:48:39 -0700 (PDT)
Received: from [10.6.18.24] (c-50-186-0-160.hsd1.or.comcast.net.
	[50.186.0.160]) by mx.google.com with ESMTPSA id
	iq10sm1393660pbc.14.2014.05.06.09.48.38 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 06 May 2014 09:48:39 -0700 (PDT)
Message-ID: <53691266.2090107@intel.com>
Date: Tue, 06 May 2014 09:48:38 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.4.0
MIME-Version: 1.0
To: 'Patches and discussions about the oe-core layer'
	<openembedded-core@lists.openembedded.org>, 
	Yocto Project Discussion <yocto@yoctoproject.org>, 
	"poky@yoctoproject.org" <poky@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Daisy Stable Branch - open for patch suggestions
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
X-List-Received-Date: Tue, 06 May 2014 16:48:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


[Sorry for the overlap, want to make sure I hit a broad audience]

Hi Everyone!

I will be the stable maintainer for the Daisy branch, and it is now open 
for suggestions of backport patches.  I am starting to generate a list 
of patches that are already in master.

The following wiki page has the Policies and process for requesting a 
fix in a stable branch, please review that before sending a patch.

https://wiki.yoctoproject.org/wiki/Stable_branch_maintenance

Please remember to include [daisy] in any request (backport or commit).

We do not have a hard date for this yet, but likely be in late May - 
early June time frame for the 1.6.1 release.

Thanks to all for your efforts.

Sau!

