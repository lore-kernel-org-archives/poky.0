Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54A69E0044D
	for <poky@yoctoproject.org>; Fri,  4 May 2012 11:13:04 -0700 (PDT)
Received: from mail-pz0-f45.google.com ([209.85.210.45])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 04 May 2012 11:13:04 -0700
Received: by dadv2 with SMTP id v2so4396579dad.4
	for <poky@yoctoproject.org>; Fri, 04 May 2012 11:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=iRjq9iGcC7frlMSiqGoe85mcLSDrpzBWfCKs8SjuS7s=;
	b=aiVHXBhJ0KVJGR7lkKdy7TkLGD2+RCXGcaw/TaHu4/QeS4BkyV5JmB3jlwb8EL8UNd
	ijmfy9RNRrz6wKmi2jPcGp/3Lu4VDC5dpPplRSYXHExWpVxqTv/+37UuRE3ObgpGJGmD
	Bj4N6UyCQQXpznIJ0jgcqJxTXXonax95vwD7IBnKqH2FABr1SE3KgOIqVj27acHSU7lW
	1ATt5mh+06xM7aVKC00PFDr/6CVPWEVctS4nPo2Lv9g0nU1zkrtkVzoq3qAHw17ynd6d
	t0RdYPsXV5BOFi1as+Q5QF62QghLp4Lpxcsf8cP+s68qDGj0Tgt8GMCtnfl71v1eT0lF
	bsTA==
Received: by 10.68.231.72 with SMTP id te8mr11901217pbc.99.1336155183784;
	Fri, 04 May 2012 11:13:03 -0700 (PDT)
Received: from [192.168.1.12] (c-76-105-137-48.hsd1.or.comcast.net.
	[76.105.137.48])
	by mx.google.com with ESMTPS id rd4sm9275386pbc.40.2012.05.04.11.13.01
	(version=SSLv3 cipher=OTHER); Fri, 04 May 2012 11:13:02 -0700 (PDT)
Message-ID: <4FA41C34.90600@intel.com>
Date: Fri, 04 May 2012 11:13:08 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: poky@yoctoproject.org
References: <cover.1336063152.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1336063152.git.paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmnrZ8DWDx+KRv7wWm7SJe1RsTqIE1pxJtM+WgIkee0hzOnh4pmAzpDeE2okypqJfEzjvhu
Subject: Re: [PATCH 0/1] Ubuntu 12.04 version string fix
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
X-List-Received-Date: Fri, 04 May 2012 18:13:04 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/03/2012 09:40 AM, Paul Eggleton wrote:
> This fix should also go into denzil-next.
>
>
> The following changes since commit d89f7b9cab1946a3267e3b0402f168f946d480b2:
>
>    documentation/Makefile: Fixed figures publishing bug (2012-05-01 20:50:56 +0100)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib paule/ubuntu-1204-ver
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/ubuntu-1204-ver
>
> Paul Eggleton (1):
>    poky.conf: use correct version string for Ubuntu 12.04

Merged to denzil-next, thanks!

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

