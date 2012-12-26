Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 597DFE00559
	for <poky@yoctoproject.org>; Wed, 26 Dec 2012 09:18:55 -0800 (PST)
Received: from mail-pb0-f70.google.com ([209.85.160.70])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 26 Dec 2012 09:18:54 -0800
Received: by mail-pb0-f70.google.com with SMTP id rp2so9449925pbb.5
	for <poky@yoctoproject.org>; Wed, 26 Dec 2012 09:18:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:message-id:date:from:user-agent:mime-version
	:to:cc:subject:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=ObZF5/m9wZcFu+4OsNMXhiKgn8aUAQeaK19o6Kf1nKQ=;
	b=ZXIQmvdlOBDGK1WJ1RVFtJZPo/du+rzbOmg5njBmB51TDWPOrrvJOOX5sVYaZWjx6z
	IAhCnvAYb7vDLsXdASM/H1pfuqgt0andN+bFC5A4b/gY1nOmJ5v15TAA0d4HDMGGhBiy
	c3xk1AxTD364eoO0LC971WHUfL/5kK3GmfQYqucRMKf/5enWdRkek+QkpI8Edn6TzYhZ
	lZDhn3XmSYf2Qi3eu6oMoTzwW166g1aazHUIkw5EI9tTj+2VcO31p4UJm2We1O5xNGro
	XISTbBG0pE2Q1v6DP+4Hh5AW5KiEzs/Qmeot7Fv3oAO87wQGoB9lUsmYP6XOOCub/K9G
	MfpA==
X-Received: by 10.69.0.74 with SMTP id aw10mr87141669pbd.87.1356542334673;
	Wed, 26 Dec 2012 09:18:54 -0800 (PST)
X-Received: by 10.69.0.74 with SMTP id aw10mr87141644pbd.87.1356542334516;
	Wed, 26 Dec 2012 09:18:54 -0800 (PST)
Received: from [10.1.10.13] (c-50-137-42-92.hsd1.or.comcast.net.
	[50.137.42.92])
	by mx.google.com with ESMTPS id wh8sm16182276pbc.75.2012.12.26.09.18.49
	(version=SSLv3 cipher=OTHER); Wed, 26 Dec 2012 09:18:53 -0800 (PST)
Message-ID: <50DB3174.1030709@intel.com>
Date: Wed, 26 Dec 2012 09:18:44 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
X-Gm-Message-State: ALoCoQnk6IXTxGtUa0nTpk+b1h/s86ndssr9EsXH0GZzem1kS3tyt/SPwoGXkN817hGrsOTZBcyxgK4UrbMI1zMBCbFl7dALXeRMRcP7UXvbxWunlQrjaGCiZgMRRD/KwK/9zaxDhcvmiW9zae5q1ih8vLT7R+kb5g==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, poky@yoctoproject.org
Subject: Denzil 1.2.2 development nearly complete
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
X-List-Received-Date: Wed, 26 Dec 2012 17:18:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi everyone,

I wanted to make sure the community is aware that I am wrapping things 
up for our next denzil stable release, 1.2.2. We've had some discussions 
about this at the Technical Team Meetings, but I thought I'd send this 
out to the mailing lists as well.

The current status of my testing branches can be found here:

oe-core based tree:
http://git.openembedded.org/openembedded-core-contrib/log/?h=sgarman/denzil-next

and my poky-based tree:
http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=sgarman/denzil-next

I will be submitting a pull request to Richard soon to get these patches 
merged to the official denzil branches of the oe-core and poky 
repositories, respectively. If anyone has outstanding patches they need 
in denzil (or that I've overlooked), please get them to me as soon as 
possible.

To see a list of bugs addressed during the 1.2.2 release cycle, do a 
Bugzilla search for bugs with a Target Milestone of 1.2.2.

Our QA team will be back on Monday, January 7, and will begin another 
full-pass test cycle on denzil. If they don't find any new bugs and can 
verify the recently fixed bugs in denzil, our goal is to release 1.2.2 
shortly thereafter.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

