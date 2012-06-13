Return-Path: <scott.a.garman@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E57B5E006D9
	for <poky@yoctoproject.org>; Wed, 13 Jun 2012 09:10:09 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga02.intel.com with ESMTP/TLS/RC4-MD5; 13 Jun 2012 09:10:09 -0700
Received: by pbbro8 with SMTP id ro8so2520542pbb.25
	for <poky@yoctoproject.org>; Wed, 13 Jun 2012 09:10:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=Wq3P+b/UnJ38zQS9Dnypr3b24VAM8bQ1O/Qkc97jv7o=;
	b=aU+lqTAbWWD78cqs0ocbZPwUcL76cEFyUbJO29T+KktBIWo5T7+xB1M0fjJ9D0c+aP
	kyP+v4bt4H0FzQYjNnI4sGEK3K68XlHnOrUpa5PoRartG5UxUu8WIDtvsRMWdLdrX3et
	hwZ1ssOdLc1/VCrwL9YyrUd86296I+aw59tcZbfmjSr7hbPFAv9rkHeK/nQajOUMgriJ
	q0SC6runMZtELWQAKAkX6CnMZTTziIGpHWuxVeRAFaPMjgds2XFH7xNviXqGoXcmXYA/
	h7rMZ7NQuGh4u3z5XocOMfKXJ+7eFuJ78e0nAFpZ/qfKSMiv/Y8AdTfBHvxzZCyIJtGI
	FyUw==
Received: by 10.68.193.195 with SMTP id hq3mr51377244pbc.30.1339603808769;
	Wed, 13 Jun 2012 09:10:08 -0700 (PDT)
Received: from [10.1.10.192] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id rd7sm6171042pbc.70.2012.06.13.09.10.06
	(version=SSLv3 cipher=OTHER); Wed, 13 Jun 2012 09:10:07 -0700 (PDT)
Message-ID: <4FD8BB5D.2040101@intel.com>
Date: Wed, 13 Jun 2012 09:10:05 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1339533507.git.scott.a.garman@intel.com>
In-Reply-To: <cover.1339533507.git.scott.a.garman@intel.com>
X-Gm-Message-State: ALoCoQk9CkFfmZ4ljPZoUn9OfO+H5suJPAAm/8UJ8plBTnRCK6/EB8gESK/1yQ8unlJoNOpHFFpO
Subject: Re: RFC: [PATCH 00/31] denzil pull request
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
X-List-Received-Date: Wed, 13 Jun 2012 16:10:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2012 01:40 PM, Scott Garman wrote:
> Hello,
>
> This is a pull request for the poky denzil branch, based on a set of
> commits I've been testing from my sgarman/denzil-next branch.
>
> I'm submitting this as an RFC so the community can offer feedback as
> soon as possible. I'm planning on running this through the Yocto
> autobuilder tonight and will reply to this thread with test results.
> Assuming we get green builds, the goal is to get this pull request
> merged into poky's denzil branch fairly quickly, so please speak
> up if you have any comments or concerns with these commits.

Autobuilder test results are in:

nightly:
http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/509

We appear to have a package_index failure:

http://autobuilder.yoctoproject.org:8010/builders/nightly/builds/509/steps/shell_45/logs/stdio

I'll file a bug for this after confirming some things with Beth.

nightly-non-gpl3:
http://autobuilder.yoctoproject.org:8010/builders/nightly-non-gpl3/builds/105

nightly-tiny:
http://autobuilder.yoctoproject.org:8010/builders/nightly-tiny/builds/86

nightly-meta-intel:
http://autobuilder.yoctoproject.org:8010/builders/nightly-meta-intel/builds/101

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

